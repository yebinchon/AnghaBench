
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int features; TYPE_2__* family; } ;
struct TYPE_6__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ uiAttribute ;




 int uiFreeOpenTypeFeatures (int ) ;
 int uiprivFree (TYPE_2__*) ;

__attribute__((used)) static void destroy(uiAttribute *a)
{
 switch (a->type) {
 case 129:
  uiprivFree(a->u.family);
  break;
 case 128:
  uiFreeOpenTypeFeatures(a->u.features);
  break;
 }
 uiprivFree(a);
}
