
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * img; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiTableValue ;
typedef int uiImage ;


 TYPE_2__* newTableValue (int ) ;
 int uiTableValueTypeImage ;

uiTableValue *uiNewTableValueImage(uiImage *img)
{
 uiTableValue *v;

 v = newTableValue(uiTableValueTypeImage);
 v->u.img = img;
 return v;
}
