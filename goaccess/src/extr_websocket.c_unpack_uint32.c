
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int memcpy (int *,void const*,int) ;
 int ntohl (int ) ;

size_t
unpack_uint32 (const void *buf, uint32_t * val)
{
  uint32_t v32 = 0;
  memcpy (&v32, buf, sizeof (uint32_t));
  *val = ntohl (v32);

  return sizeof (uint32_t);
}
