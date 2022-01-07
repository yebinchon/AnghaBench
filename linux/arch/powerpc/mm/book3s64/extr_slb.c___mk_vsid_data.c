
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SLB_VSID_SSIZE_SHIFT ;
 unsigned long slb_vsid_shift (int) ;

__attribute__((used)) static inline unsigned long __mk_vsid_data(unsigned long vsid, int ssize,
      unsigned long flags)
{
 return (vsid << slb_vsid_shift(ssize)) | flags |
  ((unsigned long) ssize << SLB_VSID_SSIZE_SHIFT);
}
