
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_VM ;
 int VM_Free (int *) ;
 int * vmTable ;

void VM_Clear(void) {
 int i;
 for (i=0;i<MAX_VM; i++) {
  VM_Free(&vmTable[i]);
 }
}
