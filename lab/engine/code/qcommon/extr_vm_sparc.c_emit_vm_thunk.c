
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_info {int dummy; } ;


 int BA ;
 int G0 ;
 int I0 ;
 int I1 ;
 int I2 ;
 int I3 ;
 int I7 ;
 int JMPL ;
 int JMPLI ;
 int L0 ;
 int L1 ;
 int L2 ;
 int L3 ;
 int O0 ;
 int O1 ;
 int O2 ;
 int O3 ;
 int O6 ;
 int O7 ;
 int OR ;
 int RESTORE ;
 int SAVEI ;
 int SL (int,int) ;
 int THUNK_ICOUNT ;
 int end_emit (struct func_info* const) ;
 int in (int ,int,...) ;
 int rDATABASE ;
 int rDATAMASK ;
 int rPSTACK ;
 int rVMDATA ;
 int start_emit (struct func_info* const,int ) ;

__attribute__((used)) static void emit_vm_thunk(struct func_info * const fp)
{

 start_emit(fp, THUNK_ICOUNT);

 in(OR, G0, O0, rVMDATA);
 in(OR, G0, O1, rPSTACK);
 in(OR, G0, O2, rDATABASE);
 in(BA, +4*17);
 in(OR, G0, O3, rDATAMASK);



 in(SAVEI, O6, -SL(64, 128), O6);

 in(OR, G0, rVMDATA, L0);
 in(OR, G0, rPSTACK, L1);
 in(OR, G0, rDATABASE, L2);
 in(OR, G0, rDATAMASK, L3);

 in(OR, G0, I0, O0);
 in(OR, G0, I1, O1);
 in(JMPL, I3, G0, O7);
 in(OR, G0, I2, O2);

 in(OR, G0, L0, rVMDATA);
 in(OR, G0, L1, rPSTACK);
 in(OR, G0, L2, rDATABASE);
 in(OR, G0, L3, rDATAMASK);

 in(JMPLI, I7, 8, G0);
 in(RESTORE, O0, G0, O0);

 end_emit(fp);
}
