
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ pcm990_cpld_base ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void pcm990_cpld_writeb(u8 value, unsigned int reg)
{
 writeb(value, pcm990_cpld_base + reg);
}
