
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Process ;


 int Process_isKernelThread (int *) ;

bool Process_isThread(Process* this) {
   return (Process_isKernelThread(this));
}
