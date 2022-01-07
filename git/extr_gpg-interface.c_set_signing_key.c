
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int configured_signing_key ;
 int free (int ) ;
 int xstrdup (char const*) ;

void set_signing_key(const char *key)
{
 free(configured_signing_key);
 configured_signing_key = xstrdup(key);
}
