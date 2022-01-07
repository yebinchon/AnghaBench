
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ia64_sal_retval {int dummy; } ;


 scalar_t__ IA64_SAL_OEMFUNC_MAX ;
 scalar_t__ IA64_SAL_OEMFUNC_MIN ;
 int SAL_CALL_NOLOCK (struct ia64_sal_retval,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

int
ia64_sal_oemcall_nolock(struct ia64_sal_retval *isrvp, u64 oemfunc, u64 arg1,
   u64 arg2, u64 arg3, u64 arg4, u64 arg5, u64 arg6,
   u64 arg7)
{
 if (oemfunc < IA64_SAL_OEMFUNC_MIN || oemfunc > IA64_SAL_OEMFUNC_MAX)
  return -1;
 SAL_CALL_NOLOCK(*isrvp, oemfunc, arg1, arg2, arg3, arg4, arg5, arg6,
   arg7);
 return 0;
}
