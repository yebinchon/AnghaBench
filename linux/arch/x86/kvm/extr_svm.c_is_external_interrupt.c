
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SVM_EVTINJ_TYPE_INTR ;
 int SVM_EVTINJ_TYPE_MASK ;
 int SVM_EVTINJ_VALID ;

__attribute__((used)) static int is_external_interrupt(u32 info)
{
 info &= SVM_EVTINJ_TYPE_MASK | SVM_EVTINJ_VALID;
 return info == (SVM_EVTINJ_VALID | SVM_EVTINJ_TYPE_INTR);
}
