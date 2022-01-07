
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_t ;


 int * DoSyscall ;
 int EmitPtr (int *) ;
 int EmitRexString (int,char*) ;
 int EmitString (char*) ;
 int compiledOfs ;
 int vm_arg ;
 int vm_opStackBase ;
 int vm_opStackOfs ;
 int vm_programStack ;
 int vm_syscallNum ;

int EmitCallDoSyscall(vm_t *vm)
{

 EmitRexString(0x48, "BA");
 EmitPtr(DoSyscall);



 EmitString("51");
 EmitString("56");
 EmitString("57");







 EmitString("A3");
 EmitPtr(&vm_syscallNum);

 EmitString("89 F0");
 EmitString("A3");
 EmitPtr(&vm_programStack);

 EmitString("88 D8");
 EmitString("A2");
 EmitPtr(&vm_opStackOfs);

 EmitRexString(0x48, "89 F8");
 EmitRexString(0x48, "A3");
 EmitPtr(&vm_opStackBase);

 EmitString("89 C8");
 EmitString("A3");
 EmitPtr(&vm_arg);


 EmitString("55");
 EmitRexString(0x48, "89 E5");
 EmitRexString(0x48, "83 E4 F0");



 EmitString("FF D2");


 EmitRexString(0x48, "89 EC");
 EmitString("5D");





 EmitString("5F");
 EmitString("5E");
 EmitString("59");

 EmitString("C3");

 return compiledOfs;
}
