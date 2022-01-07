
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_t ;


 int Constant4 () ;
 int EmitJumpIns (int *,char*,int ) ;
void EmitBranchConditions(vm_t *vm, int op)
{
 switch(op)
 {
 case 137:
  EmitJumpIns(vm, "0F 84", Constant4());
 break;
 case 128:
  EmitJumpIns(vm, "0F 85", Constant4());
 break;
 case 130:
  EmitJumpIns(vm, "0F 8C", Constant4());
 break;
 case 132:
  EmitJumpIns(vm, "0F 8E", Constant4());
 break;
 case 134:
  EmitJumpIns(vm, "0F 8F", Constant4());
 break;
 case 136:
  EmitJumpIns(vm, "0F 8D", Constant4());
 break;
 case 129:
  EmitJumpIns(vm, "0F 82", Constant4());
 break;
 case 131:
  EmitJumpIns(vm, "0F 86", Constant4());
 break;
 case 133:
  EmitJumpIns(vm, "0F 87", Constant4());
 break;
 case 135:
  EmitJumpIns(vm, "0F 83", Constant4());
 break;
 }
}
