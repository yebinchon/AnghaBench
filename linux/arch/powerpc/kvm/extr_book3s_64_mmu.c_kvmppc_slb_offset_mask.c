
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct kvmppc_slb {int dummy; } ;


 unsigned long kvmppc_slb_sid_shift (struct kvmppc_slb*) ;

__attribute__((used)) static u64 kvmppc_slb_offset_mask(struct kvmppc_slb *slbe)
{
 return (1ul << kvmppc_slb_sid_shift(slbe)) - 1;
}
