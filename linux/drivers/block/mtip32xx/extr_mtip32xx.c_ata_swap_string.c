
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int be16_to_cpus (int *) ;

__attribute__((used)) static inline void ata_swap_string(u16 *buf, unsigned int len)
{
 int i;
 for (i = 0; i < (len/2); i++)
  be16_to_cpus(&buf[i]);
}
