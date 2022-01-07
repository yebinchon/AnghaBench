
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* list_file_offset; } ;
struct TYPE_3__ {int tot_lists; void* list_data_offset; } ;


 TYPE_2__* FLI_ENTRY_ADJUSTED (int) ;
 TYPE_1__ Header ;
 void* MData ;
 int assert (int) ;
 void* list_id_bytes ;

__attribute__((used)) static inline void *get_metafile_ptr_old (int p) {
  assert (p >= 0 && p < Header.tot_lists);
  return MData + (FLI_ENTRY_ADJUSTED(p)->list_file_offset - Header.list_data_offset)



  ;
}
