
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {unsigned long guest_cr4; unsigned long cr4_guest_host_mask; unsigned long cr4_read_shadow; } ;



__attribute__((used)) static inline unsigned long nested_read_cr4(struct vmcs12 *fields)
{
 return (fields->guest_cr4 & ~fields->cr4_guest_host_mask) |
  (fields->cr4_read_shadow & fields->cr4_guest_host_mask);
}
