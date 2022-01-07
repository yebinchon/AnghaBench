
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct frame {int sent; } ;


 int INT_MAX ;
 int NSEC_PER_USEC ;
 int UINT_MAX ;
 int div_u64 (int,int) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
tsince_hr(struct frame *f)
{
 u64 delta = ktime_to_ns(ktime_sub(ktime_get(), f->sent));


 if (likely(delta <= UINT_MAX))
  return (u32)delta / NSEC_PER_USEC;


 if (delta > ((u64)INT_MAX * NSEC_PER_USEC))
  return INT_MAX;

 return div_u64(delta, NSEC_PER_USEC);
}
