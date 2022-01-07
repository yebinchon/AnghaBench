
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* code ;
 size_t pc ;

__attribute__((used)) static int NextConstant4(void)
{
 return ((unsigned int)code[pc] | ((unsigned int)code[pc+1]<<8) | ((unsigned int)code[pc+2]<<16) | ((unsigned int)code[pc+3]<<24));
}
