
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* data_area_ptr_assign_type ;
struct TYPE_2__ {scalar_t__ deref; void* assign; int member_0; } ;
typedef TYPE_1__ data_area_ptr ;


 scalar_t__ CVTRCEP_OFFSET ;
 scalar_t__ CVT_PTR ;
 scalar_t__ RCEAFC_OFFSET ;

uint64_t uv_get_free_memory(void) {
  uint64_t freeram;

  data_area_ptr cvt = {0};
  data_area_ptr rcep = {0};
  cvt.assign = *(data_area_ptr_assign_type*)(CVT_PTR);
  rcep.assign = *(data_area_ptr_assign_type*)(cvt.deref + CVTRCEP_OFFSET);
  freeram = *((uint64_t*)(rcep.deref + RCEAFC_OFFSET)) * 4;
  return freeram;
}
