
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git__isspace (unsigned int) ;

__attribute__((used)) static unsigned name_hash(const char *name)
{
 unsigned c, hash = 0;

 if (!name)
  return 0;






 while ((c = *name++) != 0) {
  if (git__isspace(c))
   continue;
  hash = (hash >> 2) + (c << 24);
 }
 return hash;
}
