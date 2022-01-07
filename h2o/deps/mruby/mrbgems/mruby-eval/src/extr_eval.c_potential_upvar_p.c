
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mrb_locals {int dummy; } ;
typedef int mrb_bool ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static mrb_bool
potential_upvar_p(struct mrb_locals *lv, uint16_t v, int argc, uint16_t nlocals)
{
  if (v >= nlocals) return FALSE;

  if (v < argc+1) return FALSE;
  return TRUE;
}
