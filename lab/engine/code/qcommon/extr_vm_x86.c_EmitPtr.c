
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Emit1 (intptr_t) ;
 int Emit4 (intptr_t) ;

__attribute__((used)) static void EmitPtr(void *ptr)
{
 intptr_t v = (intptr_t) ptr;

 Emit4(v);






}
