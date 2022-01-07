
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FPCSR_mskDBZT ;
 unsigned int FPCSR_mskIEXT ;
 unsigned int FPCSR_mskIVOT ;
 unsigned int FPCSR_mskOVFT ;
 unsigned int FPCSR_mskUDFT ;
 int FPE_FLTDIV ;
 int FPE_FLTINV ;
 int FPE_FLTOVF ;
 int FPE_FLTRES ;
 int FPE_FLTUND ;

inline void fill_sigfpe_signo(unsigned int fpcsr, int *signo)
{
 if (fpcsr & FPCSR_mskOVFT)
  *signo = FPE_FLTOVF;

 else if (fpcsr & FPCSR_mskUDFT)
  *signo = FPE_FLTUND;

 else if (fpcsr & FPCSR_mskIVOT)
  *signo = FPE_FLTINV;
 else if (fpcsr & FPCSR_mskDBZT)
  *signo = FPE_FLTDIV;
 else if (fpcsr & FPCSR_mskIEXT)
  *signo = FPE_FLTRES;
}
