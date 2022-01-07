
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPE_FLTDIV ;
 int FPE_FLTINV ;
 int FPE_FLTOVF ;
 int FPE_FLTRES ;
 int FPE_FLTUND ;
 int FPE_FLTUNK ;
 unsigned long FPSCR_OE ;
 unsigned long FPSCR_OX ;
 unsigned long FPSCR_UE ;
 unsigned long FPSCR_UX ;
 unsigned long FPSCR_VE ;
 unsigned long FPSCR_VX ;
 unsigned long FPSCR_XE ;
 unsigned long FPSCR_XX ;
 unsigned long FPSCR_ZE ;
 unsigned long FPSCR_ZX ;

__attribute__((used)) static inline int __parse_fpscr(unsigned long fpscr)
{
 int ret = FPE_FLTUNK;


 if ((fpscr & FPSCR_VE) && (fpscr & FPSCR_VX))
  ret = FPE_FLTINV;


 else if ((fpscr & FPSCR_OE) && (fpscr & FPSCR_OX))
  ret = FPE_FLTOVF;


 else if ((fpscr & FPSCR_UE) && (fpscr & FPSCR_UX))
  ret = FPE_FLTUND;


 else if ((fpscr & FPSCR_ZE) && (fpscr & FPSCR_ZX))
  ret = FPE_FLTDIV;


 else if ((fpscr & FPSCR_XE) && (fpscr & FPSCR_XX))
  ret = FPE_FLTRES;

 return ret;
}
