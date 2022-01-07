
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {long long list_file_offset; } ;
struct TYPE_3__ {int tot_lists; } ;


 TYPE_2__* FLI_ENTRY_ADJUSTED (int) ;
 TYPE_1__ Header ;
 int assert (int) ;
 long long idx_kfs_headers_size ;

__attribute__((used)) static inline long long get_metafile_offset (int p) {
  assert (p >= 0 && p <= Header.tot_lists);
  return (FLI_ENTRY_ADJUSTED(p)->list_file_offset) + idx_kfs_headers_size;
}
