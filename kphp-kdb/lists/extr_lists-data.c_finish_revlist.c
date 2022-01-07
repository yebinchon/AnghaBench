
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_write_pos () ;
 int metafile_crc32 ;
 int * new_revlist_metafiles_crc32 ;
 int * new_revlist_metafiles_offsets ;
 int new_tot_revlist_metafiles ;

void finish_revlist (void) {
  new_revlist_metafiles_crc32[new_tot_revlist_metafiles - 1] = metafile_crc32;
  new_revlist_metafiles_offsets[new_tot_revlist_metafiles] = get_write_pos ();
}
