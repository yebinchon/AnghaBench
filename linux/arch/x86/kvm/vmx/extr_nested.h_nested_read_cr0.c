
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {unsigned long guest_cr0; unsigned long cr0_guest_host_mask; unsigned long cr0_read_shadow; } ;



__attribute__((used)) static inline unsigned long nested_read_cr0(struct vmcs12 *fields)
{
 return (fields->guest_cr0 & ~fields->cr0_guest_host_mask) |
  (fields->cr0_read_shadow & fields->cr0_guest_host_mask);
}
