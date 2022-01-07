
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uiOpenTypeFeatures ;
struct feature {int value; } ;


 scalar_t__ find (struct feature*,int const*) ;
 struct feature mkkey (char,char,char,char) ;

int uiOpenTypeFeaturesGet(const uiOpenTypeFeatures *otf, char a, char b, char c, char d, uint32_t *value)
{
 const struct feature *f;
 struct feature key;

 key = mkkey(a, b, c, d);
 f = (const struct feature *) find(&key, otf);
 if (f == ((void*)0))
  return 0;
 *value = f->value;
 return 1;
}
