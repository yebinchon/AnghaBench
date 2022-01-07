
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 scalar_t__ MTRR_TYPE_WRBACK ;
 unsigned long _PAGE_CACHE_MODE_UC_MINUS ;
 int _PAGE_CACHE_MODE_WB ;
 scalar_t__ mtrr_type_lookup (int ,int ,scalar_t__*) ;

__attribute__((used)) static unsigned long pat_x_mtrr_type(u64 start, u64 end,
         enum page_cache_mode req_type)
{




 if (req_type == _PAGE_CACHE_MODE_WB) {
  u8 mtrr_type, uniform;

  mtrr_type = mtrr_type_lookup(start, end, &uniform);
  if (mtrr_type != MTRR_TYPE_WRBACK)
   return _PAGE_CACHE_MODE_UC_MINUS;

  return _PAGE_CACHE_MODE_WB;
 }

 return req_type;
}
