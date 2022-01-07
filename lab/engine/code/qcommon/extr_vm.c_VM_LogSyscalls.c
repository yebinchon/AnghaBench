
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dataBase; } ;
typedef int FILE ;


 TYPE_1__* currentVM ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int,void*,int,int,int,int,int) ;

void VM_LogSyscalls( int *args ) {
 static int callnum;
 static FILE *f;

 if ( !f ) {
  f = fopen("syscalls.log", "w" );
 }
 callnum++;
 fprintf(f, "%i: %p (%i) = %i %i %i %i\n", callnum, (void*)(args - (int *)currentVM->dataBase),
  args[0], args[1], args[2], args[3], args[4] );
}
