
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int a; int b; int g; int r; int underlineColor; } ;
struct TYPE_7__ {int features; TYPE_1__ color; int underline; int stretch; int italic; int weight; int size; int family; } ;
struct TYPE_8__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ uiAttribute ;
 int uiprivOpenTypeFeaturesEqual (int ,int ) ;
 int uiprivStricmp (int ,int ) ;

int uiprivAttributeEqual(const uiAttribute *a, const uiAttribute *b)
{
 if (a == b)
  return 1;
 if (a->type != b->type)
  return 0;
 switch (a->type) {
 case 135:
  return uiprivStricmp(a->u.family, b->u.family);
 case 132:

  return a->u.size == b->u.size;
 case 128:
  return a->u.weight == b->u.weight;
 case 133:
  return a->u.italic == b->u.italic;
 case 131:
  return a->u.stretch == b->u.stretch;
 case 130:
  return a->u.underline == b->u.underline;
 case 129:
  if (a->u.color.underlineColor != b->u.color.underlineColor)
   return 0;

 case 136:
 case 137:

  return (a->u.color.r == b->u.color.r) &&
   (a->u.color.g == b->u.color.g) &&
   (a->u.color.b == b->u.color.b) &&
   (a->u.color.a == b->u.color.a);
 case 134:
  return uiprivOpenTypeFeaturesEqual(a->u.features, b->u.features);
 }

 return 0;
}
