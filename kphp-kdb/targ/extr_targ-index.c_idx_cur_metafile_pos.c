
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long idx_metafile_pos ;
 long long idx_rptr ;
 long long idx_wptr ;

__attribute__((used)) static inline long long idx_cur_metafile_pos (void) {
  return idx_metafile_pos - (idx_wptr - idx_rptr);
}
