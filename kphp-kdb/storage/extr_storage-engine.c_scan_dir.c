
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scanned; int path; } ;


 TYPE_1__* Dirs ;
 int kprintf (char*,int,int) ;
 int storage_scan_dir (int) ;
 int zstrdup (char const* const) ;

void scan_dir (const char *const path, int dir_id) {
  Dirs[dir_id].path = zstrdup (path);
  Dirs[dir_id].scanned = 0;
  int r = storage_scan_dir (dir_id);
  if (r < 0) {
    kprintf ("storage_scan_dir (%d) returns error code %d.\n", dir_id, r);
  }
}
