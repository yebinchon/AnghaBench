
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;


 scalar_t__ __dtb_end ;
 scalar_t__ __dtb_start ;
 int fw_arg2 ;
 int fw_arg3 ;
 scalar_t__ fw_passed_dtb ;

__attribute__((used)) static ulong get_fdtaddr(void)
{
 ulong ftaddr = 0;

 if (fw_passed_dtb && !fw_arg2 && !fw_arg3)
  return (ulong)fw_passed_dtb;

 if (__dtb_start < __dtb_end)
  ftaddr = (ulong)__dtb_start;

 return ftaddr;
}
