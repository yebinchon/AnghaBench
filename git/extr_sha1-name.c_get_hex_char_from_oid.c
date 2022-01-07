
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int* hash; } ;



__attribute__((used)) static inline char get_hex_char_from_oid(const struct object_id *oid,
      unsigned int pos)
{
 static const char hex[] = "0123456789abcdef";

 if ((pos & 1) == 0)
  return hex[oid->hash[pos >> 1] >> 4];
 else
  return hex[oid->hash[pos >> 1] & 0xf];
}
