
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tot_lists; } ;


 TYPE_1__ Header ;
 int check_metafile_loaded (scalar_t__,int) ;

int check_revlist_metafile_loaded (int x, int use_aio) {
  if (x == -1) {
    return 1;
  }
  return check_metafile_loaded (x + Header.tot_lists + 1, use_aio);
}
