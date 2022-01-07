
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PFERR_FETCH_MASK ;
 int PFERR_PRESENT_MASK ;
 int PFERR_RSVD_MASK ;
 int PFERR_WRITE_MASK ;
 scalar_t__ shadow_acc_track_mask ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool page_fault_can_be_fast(u32 error_code)
{




 if (unlikely(error_code & PFERR_RSVD_MASK))
  return 0;


 if (unlikely(((error_code & (PFERR_FETCH_MASK | PFERR_PRESENT_MASK))
        == (PFERR_FETCH_MASK | PFERR_PRESENT_MASK))))
  return 0;
 return shadow_acc_track_mask != 0 ||
        ((error_code & (PFERR_WRITE_MASK | PFERR_PRESENT_MASK))
  == (PFERR_WRITE_MASK | PFERR_PRESENT_MASK));
}
