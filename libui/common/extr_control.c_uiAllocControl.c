
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void* TypeSignature; void* OSSignature; int Signature; } ;
typedef TYPE_1__ uiControl ;


 scalar_t__ uiprivAlloc (size_t,char const*) ;
 int uiprivControlSignature ;

uiControl *uiAllocControl(size_t size, uint32_t OSsig, uint32_t typesig, const char *typenamestr)
{
 uiControl *c;

 c = (uiControl *) uiprivAlloc(size, typenamestr);
 c->Signature = uiprivControlSignature;
 c->OSSignature = OSsig;
 c->TypeSignature = typesig;
 return c;
}
