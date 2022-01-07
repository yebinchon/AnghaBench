
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gstr {char const* s; } ;



const char *str_get(struct gstr *gs)
{
 return gs->s;
}
