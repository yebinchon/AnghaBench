
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_dev; int st_ino; int st_size; int st_mtime; } ;
struct kfs_file_info {int refcnt; char* filename; char* suffix; int flags; long long min_log_pos; long long max_log_pos; int kfs_file_type; void* filename_len; int device; int inode; int file_size; int mtime; } ;


 struct kfs_file_info* calloc (int,int) ;
 int classify_suffix (char*,int,long long*) ;
 int fprintf (int ,char*,char const*) ;
 int kfs_binlog ;
 int kfs_partial ;
 int kfs_snapshot ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 void* strlen (char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static struct kfs_file_info *kfs_file_info_alloc (const char *filename, int cut_backup_suffix) {
  struct stat st;
  if (stat (filename, &st) < 0) {
    fprintf (stderr, "error: unable to stat %s: %m\n", filename);
    return ((void*)0);
  }

  struct kfs_file_info *FI = calloc (sizeof (*FI), 1);
  if (FI == ((void*)0)) {
    return ((void*)0);
  }

  FI->mtime = st.st_mtime;
  FI->file_size = st.st_size;
  FI->inode = st.st_ino;
  FI->device = st.st_dev;
  FI->refcnt = 1;
  FI->filename = strdup (filename);
  FI->filename_len = strlen (filename);

  char *p = strrchr (FI->filename, '/');
  FI->suffix = p ? (p + 1) : FI->filename;
  p = strchr (FI->suffix, '.');
  if (p) {
    FI->suffix = p;
  }

  int l = strlen (FI->suffix);
  if (cut_backup_suffix) {
    if (l > 11 && FI->suffix[l-11] == '.') {
      int i;
      for (i = 1; i <= 10; i++) {
        if (FI->suffix[l-i] < '0' || FI->suffix[l-i] > '9') {
          break;
        }
      }
      if (i > 10) {
        l -= 11;
      }
    }
  }

  long long MMPos[2];
  const char last = FI->suffix[l];
  FI->suffix[l] = 0;
  FI->flags = classify_suffix (FI->suffix, l, MMPos);
  FI->suffix[l] = last;
  FI->min_log_pos = MMPos[0];
  FI->max_log_pos = MMPos[1];
  if (FI->flags >= 0) {
    switch (FI->flags & 3) {
      case 0:
        FI->kfs_file_type = kfs_binlog;
        break;
      case 1:
        FI->kfs_file_type = kfs_snapshot;
        break;
      case 3:
        FI->kfs_file_type = kfs_partial;
        break;
    }
  }
  return FI;
}
