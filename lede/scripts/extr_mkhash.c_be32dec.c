
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int be16dec (int const*) ;

__attribute__((used)) static uint32_t
be32dec(const void *buf)
{
 const uint8_t *p = buf;

 return (((uint32_t) be16dec(p)) << 16) | be16dec(p + 2);
}
