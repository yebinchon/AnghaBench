
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {int dummy; } ;


 int SYSC_MAX_REGS ;
 int sysc_parse_one (struct sysc*,int) ;

__attribute__((used)) static int sysc_parse_registers(struct sysc *ddata)
{
 int i, error;

 for (i = 0; i < SYSC_MAX_REGS; i++) {
  error = sysc_parse_one(ddata, i);
  if (error)
   return error;
 }

 return 0;
}
