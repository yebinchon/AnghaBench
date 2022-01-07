
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 long long* revlist_metafiles_offsets ;
 int tot_revlist_metafiles ;

__attribute__((used)) static inline long long get_revlist_metafile_offset (int p) {
  assert (p >= 0 && p <= tot_revlist_metafiles);
  return revlist_metafiles_offsets[p];
}
