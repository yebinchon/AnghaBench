
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ (* uiOpenTypeFeaturesForEachFunc ) (TYPE_1__ const*,int ,int ,int ,int ,int ,void*) ;
struct TYPE_6__ {size_t len; struct feature* data; } ;
typedef TYPE_1__ uiOpenTypeFeatures ;
typedef scalar_t__ uiForEach ;
struct feature {int value; int d; int c; int b; int a; } ;


 scalar_t__ stub1 (TYPE_1__ const*,int ,int ,int ,int ,int ,void*) ;
 scalar_t__ uiForEachStop ;

void uiOpenTypeFeaturesForEach(const uiOpenTypeFeatures *otf, uiOpenTypeFeaturesForEachFunc f, void *data)
{
 size_t n;
 const struct feature *p;
 uiForEach ret;

 p = otf->data;
 for (n = 0; n < otf->len; n++) {
  ret = (*f)(otf, p->a, p->b, p->c, p->d, p->value, data);

  if (ret == uiForEachStop)
   return;
  p++;
 }
}
