
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ isspace (int) ;

__attribute__((used)) static inline uint32_t pack_name_hash(const char *name)
{
 uint32_t c, hash = 0;

 if (!name)
  return 0;






 while ((c = *name++) != 0) {
  if (isspace(c))
   continue;
  hash = (hash >> 2) + (c << 24);
 }
 return hash;
}
