
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 int cpu_to_be16 (int ) ;
 int crc_t10dif (void*,unsigned int) ;

__attribute__((used)) static __be16 t10_pi_crc_fn(void *data, unsigned int len)
{
 return cpu_to_be16(crc_t10dif(data, len));
}
