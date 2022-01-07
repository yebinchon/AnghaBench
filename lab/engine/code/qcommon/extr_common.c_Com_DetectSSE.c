
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuFeatures_t ;


 int CF_SSE ;
 int CF_SSE2 ;
 int Com_Printf (char*) ;
 int Q_SnapVector ;
 int Q_VMftol ;
 int Q_ftol ;
 int Sys_GetProcessorFeatures () ;
 int qftolsse ;
 int qftolx87 ;
 int qsnapvectorsse ;
 int qsnapvectorx87 ;
 int qvmftolsse ;
 int qvmftolx87 ;

__attribute__((used)) static void Com_DetectSSE(void)
{

 cpuFeatures_t feat;

 feat = Sys_GetProcessorFeatures();

 if(feat & CF_SSE)
 {
  if(feat & CF_SSE2)
   Q_SnapVector = qsnapvectorsse;
  else
   Q_SnapVector = qsnapvectorx87;

  Q_ftol = qftolsse;

  Q_VMftol = qvmftolsse;

  Com_Printf("SSE instruction set enabled\n");

 }
 else
 {
  Q_ftol = qftolx87;
  Q_VMftol = qvmftolx87;
  Q_SnapVector = qsnapvectorx87;

  Com_Printf("SSE instruction set not available\n");
 }

}
