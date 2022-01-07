
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dirent {char* d_name; } ;
typedef int binlogname ;
struct TYPE_2__ {int scanned; char* path; scalar_t__ binlogs; } ;
typedef int DIR ;


 TYPE_1__* Dirs ;
 int PATH_MAX ;
 int STORAGE_ERR_OPENDIR ;
 int STORAGE_ERR_SCANDIR_MULTIPLE ;
 int closedir (int *) ;
 int exit (int) ;
 int kprintf (char*,...) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int storage_add_binlog (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int vkprintf (int,char*,char*) ;

int storage_scan_dir (int dir_id) {
  char binlogname[PATH_MAX];
  if (Dirs[dir_id].scanned) {
    return STORAGE_ERR_SCANDIR_MULTIPLE;
  }
  DIR *D = opendir (Dirs[dir_id].path);
  if (D == ((void*)0)) {
    vkprintf (1, "storage_scan_dir: opendir (%s) fail. %m\n", Dirs[dir_id].path);
    return STORAGE_ERR_OPENDIR;
  }

  struct dirent *entry;
  int add_binlog_fails = 0;
  while ( (entry = readdir (D)) != ((void*)0)) {
    if (!strcmp (entry->d_name, ".") || !strcmp (entry->d_name, "..")) {
      continue;
    }
    int l = strlen (entry->d_name);
    if (l <= 4 || strcmp (entry->d_name + l - 4, ".bin")) {
      continue;
    }
    if (strlen (Dirs[dir_id].path) + 1 + l > sizeof (binlogname) - 1) {
      kprintf ("Binlog path too long\n");
      exit (1);
    }
    strcpy (binlogname, Dirs[dir_id].path);
    char *p = binlogname + strlen (binlogname);
    if (p[-1] != '/') {
      *p++ = '/';
    }
    strcpy (p, entry->d_name);
    int r = storage_add_binlog (binlogname, dir_id);
    if (r < 0) {
      add_binlog_fails++;
      continue;
    }
    Dirs[dir_id].binlogs++;
  }
  closedir (D);
  Dirs[dir_id].scanned = (Dirs[dir_id].binlogs > 0) ? 1 : 0;
  if (add_binlog_fails > 0) {
    kprintf ("storage_scan_dir (%d): there are %d add_binlog_fails.\n", dir_id, add_binlog_fails);
  }
  return 0;
}
