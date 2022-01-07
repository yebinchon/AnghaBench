
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {int ver; } ;
typedef TYPE_1__ Cx86cpuid ;
typedef int BoolInt ;





 int True ;
 int x86cpuid_CheckAndRead (TYPE_1__*) ;
 int x86cpuid_GetFamily (int ) ;
 int x86cpuid_GetFirm (TYPE_1__*) ;
 int x86cpuid_GetModel (int ) ;

BoolInt CPU_Is_InOrder()
{
  Cx86cpuid p;
  int firm;
  UInt32 family, model;
  if (!x86cpuid_CheckAndRead(&p))
    return True;

  family = x86cpuid_GetFamily(p.ver);
  model = x86cpuid_GetModel(p.ver);

  firm = x86cpuid_GetFirm(&p);

  switch (firm)
  {
    case 129: return (family < 6 || (family == 6 && (

           model == 0x1C
        || model == 0x26
        || model == 0x27
        || model == 0x35
        || model == 0x36
        )));
    case 130: return (family < 5 || (family == 5 && (model < 6 || model == 0xA)));
    case 128: return (family < 6 || (family == 6 && model < 0xF));
  }
  return True;
}
