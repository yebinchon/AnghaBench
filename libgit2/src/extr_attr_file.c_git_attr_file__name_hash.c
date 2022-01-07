
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int assert (char const*) ;

uint32_t git_attr_file__name_hash(const char *name)
{
 uint32_t h = 5381;
 int c;
 assert(name);
 while ((c = (int)*name++) != 0)
  h = ((h << 5) + h) + c;
 return h;
}
