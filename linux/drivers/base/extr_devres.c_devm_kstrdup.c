
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;


 char* devm_kmalloc (struct device*,size_t,int ) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *devm_kstrdup(struct device *dev, const char *s, gfp_t gfp)
{
 size_t size;
 char *buf;

 if (!s)
  return ((void*)0);

 size = strlen(s) + 1;
 buf = devm_kmalloc(dev, size, gfp);
 if (buf)
  memcpy(buf, s, size);
 return buf;
}
