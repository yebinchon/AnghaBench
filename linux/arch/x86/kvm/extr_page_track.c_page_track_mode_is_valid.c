
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kvm_page_track_mode { ____Placeholder_kvm_page_track_mode } kvm_page_track_mode ;


 int KVM_PAGE_TRACK_MAX ;

__attribute__((used)) static inline bool page_track_mode_is_valid(enum kvm_page_track_mode mode)
{
 if (mode < 0 || mode >= KVM_PAGE_TRACK_MAX)
  return 0;

 return 1;
}
