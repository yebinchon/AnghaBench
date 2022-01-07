
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;


 TYPE_1__* Dirs ;
 int dirs ;
 int strcmp (int ,char const* const) ;

int get_dir_id_by_name (const char *const dirname) {
  int i;
  for (i = 0; i < dirs; i++) {
    if (!strcmp (Dirs[i].path, dirname)) {
      return i;
    }
  }
  return -1;
}
