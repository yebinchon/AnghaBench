
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_4__ {int len; int cap; struct feature* data; } ;
typedef TYPE_1__ uiOpenTypeFeatures ;
struct feature {char a; char b; char c; char d; void* value; } ;


 int bytecount (int) ;
 int featurecmp ;
 scalar_t__ find (struct feature*,TYPE_1__*) ;
 struct feature mkkey (char,char,char,char) ;
 int qsort (struct feature*,int,int,int ) ;
 scalar_t__ uiprivRealloc (struct feature*,int ,char*) ;

void uiOpenTypeFeaturesAdd(uiOpenTypeFeatures *otf, char a, char b, char c, char d, uint32_t value)
{
 struct feature *f;
 struct feature key;


 key = mkkey(a, b, c, d);
 f = (struct feature *) find(&key, otf);
 if (f != ((void*)0)) {
  f->value = value;
  return;
 }


 if (otf->len == otf->cap) {
  otf->cap *= 2;
  otf->data = (struct feature *) uiprivRealloc(otf->data, bytecount(otf->cap), "struct feature[]");
 }
 f = otf->data + otf->len;
 f->a = a;
 f->b = b;
 f->c = c;
 f->d = d;
 f->value = value;

 otf->len++;
 qsort(otf->data, otf->len, sizeof (struct feature), featurecmp);
}
