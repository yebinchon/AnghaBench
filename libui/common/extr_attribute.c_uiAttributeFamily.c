
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* family; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiAttribute ;



const char *uiAttributeFamily(const uiAttribute *a)
{
 return a->u.family;
}
