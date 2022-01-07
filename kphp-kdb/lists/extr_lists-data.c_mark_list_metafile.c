
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int list_id_t ;
struct TYPE_2__ {scalar_t__ prev; } ;


 int assert (int) ;
 int del_use (int) ;
 int get_list_metafile (int ) ;
 long long get_metafile_offset (int) ;
 TYPE_1__** metafiles ;
 int metafiles_marked ;
 long long tot_metafiles_marked_memory ;
 long long tot_metafiles_memory ;

int mark_list_metafile (list_id_t list_id) {


  int x = get_list_metafile (list_id);
  assert (x >= 0);



  if (metafiles[x]->prev >= 0) {
    long long size = get_metafile_offset (x + 1) - get_metafile_offset (x);
    tot_metafiles_memory -= size;
    tot_metafiles_marked_memory += size;
    del_use (x);
    metafiles_marked ++;
    return 1;
  }
  return 0;
}
