
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BP_VECTOR ;
 int DB_VECTOR ;
 int DF_VECTOR ;
 int EXCPT_ABORT ;
 int EXCPT_FAULT ;
 int EXCPT_INTERRUPT ;
 int EXCPT_TRAP ;
 int MC_VECTOR ;
 int NMI_VECTOR ;
 int OF_VECTOR ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int exception_type(int vector)
{
 unsigned int mask;

 if (WARN_ON(vector > 31 || vector == NMI_VECTOR))
  return EXCPT_INTERRUPT;

 mask = 1 << vector;


 if (mask & ((1 << DB_VECTOR) | (1 << BP_VECTOR) | (1 << OF_VECTOR)))
  return EXCPT_TRAP;

 if (mask & ((1 << DF_VECTOR) | (1 << MC_VECTOR)))
  return EXCPT_ABORT;


 return EXCPT_FAULT;
}
