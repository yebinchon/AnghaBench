
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm64_ftr_bits {int type; int safe_val; } ;
typedef int s64 ;


 int BUG () ;





__attribute__((used)) static s64 arm64_ftr_safe_value(const struct arm64_ftr_bits *ftrp, s64 new,
    s64 cur)
{
 s64 ret = 0;

 switch (ftrp->type) {
 case 131:
  ret = ftrp->safe_val;
  break;
 case 128:
  ret = new < cur ? new : cur;
  break;
 case 130:
  if (!cur || !new)
   break;

 case 129:
  ret = new > cur ? new : cur;
  break;
 default:
  BUG();
 }

 return ret;
}
