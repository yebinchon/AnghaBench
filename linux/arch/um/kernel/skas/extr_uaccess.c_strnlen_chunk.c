
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strnlen (void*,int) ;

__attribute__((used)) static int strnlen_chunk(unsigned long str, int len, void *arg)
{
 int *len_ptr = arg, n;

 n = strnlen((void *) str, len);
 *len_ptr += n;

 if (n < len)
  return 1;
 return 0;
}
