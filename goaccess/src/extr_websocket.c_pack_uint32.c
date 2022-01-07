
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int htonl (int ) ;
 int memcpy (void*,int *,int) ;

size_t
pack_uint32 (void *buf, uint32_t val)
{
  uint32_t v32 = htonl (val);
  memcpy (buf, &v32, sizeof (uint32_t));

  return sizeof (uint32_t);
}
