
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int new_revlist_metafiles_crc32 ;
 int new_revlist_metafiles_list_object ;
 int new_revlist_metafiles_list_object_pos ;
 int new_revlist_metafiles_offsets ;
 int new_tot_revlist_metafiles ;
 int writeout (int,int) ;

void write_revlist_metafiles_headers (void) {
  writeout (new_revlist_metafiles_offsets, (new_tot_revlist_metafiles + 1) * sizeof (long long));
  writeout (new_revlist_metafiles_list_object, new_revlist_metafiles_list_object_pos - new_revlist_metafiles_list_object);
  writeout (new_revlist_metafiles_crc32, (new_tot_revlist_metafiles + 1) * sizeof (unsigned));
}
