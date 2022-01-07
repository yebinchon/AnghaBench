
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int htonl (int ) ;
 int memcpy (unsigned char*,int *,int) ;

__attribute__((used)) static void writel(unsigned char *buf, size_t offset, uint32_t value)
{
 value = htonl(value);
 memcpy(buf + offset, &value, sizeof(uint32_t));
}
