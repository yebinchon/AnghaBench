
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* kfs_file_handle_t ;
struct TYPE_6__ {TYPE_1__* info; } ;
struct TYPE_5__ {int filename; } ;


 int assert (TYPE_2__*) ;
 int kprintf (char*,int ) ;

int load_index (kfs_file_handle_t Index) {
  assert (Index);
  kprintf ("fatal: cannot load index %s\n", Index->info->filename);
  return 7;
}
