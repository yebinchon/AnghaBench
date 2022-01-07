
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int local_id; TYPE_1__* B; } ;
typedef TYPE_2__ metafile_t ;
struct TYPE_7__ {int volume_id; } ;


 int assert (int ) ;
 int del_use (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int * get_meta_f (int ,int ,int*,int) ;
 int metafiles_unloaded ;
 int vkprintf (int,char*,TYPE_2__*) ;

__attribute__((used)) static void metafile_free (metafile_t *meta) {
  int h;
  vkprintf (3, "metafile_free (%p)\n", meta);
  del_use (meta);
  assert (get_meta_f (meta->B->volume_id, meta->local_id, &h, -1) != ((void*)0));
  free (meta);
  metafiles_unloaded++;
}
