
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Process ;


 scalar_t__ Process_isKernelThread (int *) ;
 scalar_t__ Process_isUserlandThread (int *) ;

bool Process_isThread(Process* this) {
   return (Process_isUserlandThread(this) || Process_isKernelThread(this));
}
