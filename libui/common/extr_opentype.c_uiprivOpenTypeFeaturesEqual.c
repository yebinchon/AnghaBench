
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ uiOpenTypeFeatures ;


 int bytecount (scalar_t__) ;
 scalar_t__ memcmp (int ,int ,int ) ;

int uiprivOpenTypeFeaturesEqual(const uiOpenTypeFeatures *a, const uiOpenTypeFeatures *b)
{
 if (a == b)
  return 1;
 if (a->len != b->len)
  return 0;
 return memcmp(a->data, b->data, bytecount(a->len)) == 0;
}
