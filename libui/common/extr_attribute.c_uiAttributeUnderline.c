
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiUnderline ;
struct TYPE_4__ {int underline; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiAttribute ;



uiUnderline uiAttributeUnderline(const uiAttribute *a)
{
 return a->u.underline;
}
