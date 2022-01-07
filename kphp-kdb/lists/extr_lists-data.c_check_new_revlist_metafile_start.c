
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;


 int last_metafile_start ;
 int object_id_compare (int ,int ) ;
 int output_revlist_entries ;
 int tmp_object_id ;
 int vkprintf (int,char*,int) ;

void check_new_revlist_metafile_start (object_id_t object_id) {
  if (output_revlist_entries - last_metafile_start < 1000) {
    return;
  }
  int c = object_id_compare (tmp_object_id, object_id);
  if (c) {
    vkprintf (2, "New revlist metafile contains %lld items\n", output_revlist_entries - last_metafile_start);

    last_metafile_start = output_revlist_entries;
  }
}
