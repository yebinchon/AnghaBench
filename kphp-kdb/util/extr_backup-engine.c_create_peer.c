
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {char* filename; int fd; int flags; char* filepath; int mtime; scalar_t__ fsize; int head_data; } ;


 scalar_t__ BSIZE ;
 int FIF_DEST ;
 int FIF_ZIPPED ;
 int F_WRLCK ;
 int MAX_DIRNAME_LEN ;
 int MAX_DIR_FILES ;
 int MAX_FPATH_LEN ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int assert (int) ;
 struct file_info* dst_files ;
 int dst_fnum ;
 char* dstdir ;
 int invalidate_file (struct file_info*) ;
 int kprintf (char*,char*) ;
 scalar_t__ lock_whole_file (int,int ) ;
 int memcpy (char*,char*,int) ;
 int memset (struct file_info*,int ,int) ;
 int open (char*,int,int) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int time (int ) ;
 scalar_t__ write (int,int ,scalar_t__) ;

__attribute__((used)) static struct file_info *create_peer (struct file_info *FS) {
  struct file_info *FI = dst_files + dst_fnum;
  int dirname_len = strlen (dstdir), len = strlen (FS->filename);
  int i, utime;

  assert (dst_fnum < MAX_DIR_FILES && dirname_len > 1 && dirname_len < MAX_DIRNAME_LEN);

  memset (FI, 0, sizeof (*FI));

  FI->fd = -1;
  FI->flags = FIF_DEST | (FS->flags & FIF_ZIPPED);

  if (dstdir[dirname_len - 1] == '/') {
    dirname_len--;
  }

  memcpy (FI->filepath, dstdir, dirname_len);
  FI->filepath[dirname_len] = '/';
  FI->filename = FI->filepath + dirname_len + 1;

  memcpy (FI->filepath + dirname_len + 1, FS->filename, len);
  assert (dirname_len + len + 13 < MAX_FPATH_LEN);

  utime = time (0);
  for (i = 0; i < 8; i++) {
    sprintf (FI->filename + len, ".%d", utime + i);
    FI->fd = open (FI->filepath, O_CREAT | O_EXCL | O_RDWR, 0640);
    if (FI->fd >= 0) {
      break;
    }
  }

  if (FI->fd < 0) {
    kprintf ("cannot create file %s: %m\n", FI->filepath);
    return 0;
  }

  FI->mtime = utime;
  assert (lock_whole_file (FI->fd, F_WRLCK) > 0);

  if (write (FI->fd, FS->head_data, BSIZE) < BSIZE) {
    kprintf ("cannot write to %s: %m\n", FI->filepath);
    invalidate_file (FI);
    return 0;
  }

  FI->fsize = BSIZE;
  dst_fnum++;

  return FI;
}
