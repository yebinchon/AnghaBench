
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash ;



__attribute__((used)) static unsigned long rotate_xor(unsigned long hash, const void *area,
    size_t size)
{
 size_t i;
 unsigned long *ptr = (unsigned long *)area;

 for (i = 0; i < size / sizeof(hash); i++) {

  hash = (hash << ((sizeof(hash) * 8) - 7)) | (hash >> 7);
  hash ^= ptr[i];
 }

 return hash;
}
