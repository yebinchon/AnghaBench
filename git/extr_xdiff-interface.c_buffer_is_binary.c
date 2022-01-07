
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long FIRST_FEW_BYTES ;
 int memchr (char const*,int ,unsigned long) ;

int buffer_is_binary(const char *ptr, unsigned long size)
{
 if (FIRST_FEW_BYTES < size)
  size = FIRST_FEW_BYTES;
 return !!memchr(ptr, 0, size);
}
