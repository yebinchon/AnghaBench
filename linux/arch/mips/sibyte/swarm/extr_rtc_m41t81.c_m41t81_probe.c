
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M41T81REG_SC ;
 int m41t81_read (int ) ;
 int m41t81_write (int ,unsigned int) ;

int m41t81_probe(void)
{
 unsigned int tmp;


 tmp = m41t81_read(M41T81REG_SC);
 m41t81_write(M41T81REG_SC, tmp & 0x7f);

 return m41t81_read(M41T81REG_SC) != -1;
}
