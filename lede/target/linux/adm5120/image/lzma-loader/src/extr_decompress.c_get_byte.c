
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* flash_base ;
 int flash_ofs ;

__attribute__((used)) static __inline__ unsigned char get_byte(void)
{
 return *(flash_base+flash_ofs++);
}
