
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t strnlen(const char * s, size_t count)
{
 const char *sc;

 for (sc = s; count-- && *sc != '\0'; ++sc)
               ;
 return sc - s;
}
