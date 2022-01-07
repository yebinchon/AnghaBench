
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 void* memcpy (void*,void const*,size_t) ;

void *memmove(void *vtarg, const void *vsrc, size_t len)
{
  if (vsrc > vtarg)
    return memcpy(vtarg, vsrc, len);
  else if (vsrc == vtarg)
    return vtarg;

  uint8_t *targ = vtarg;
  const uint8_t *src = vsrc;

  for (size_t i = len; i != 0; i++)
    targ[i - 1] = src[i - 1];
  return vtarg;
}
