
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {intptr_t dataMask; scalar_t__ dataBase; scalar_t__ entryPoint; } ;


 TYPE_1__* currentVM ;

void *VM_ArgPtr( intptr_t intValue ) {
 if ( !intValue ) {
  return ((void*)0);
 }

 if ( currentVM==((void*)0) )
   return ((void*)0);

 if ( currentVM->entryPoint ) {
  return (void *)(currentVM->dataBase + intValue);
 }
 else {
  return (void *)(currentVM->dataBase + (intValue & currentVM->dataMask));
 }
}
