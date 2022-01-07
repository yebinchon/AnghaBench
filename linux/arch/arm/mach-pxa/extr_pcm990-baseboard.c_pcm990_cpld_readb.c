
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ pcm990_cpld_base ;
 int readb (scalar_t__) ;

__attribute__((used)) static u8 pcm990_cpld_readb(unsigned int reg)
{
 return readb(pcm990_cpld_base + reg);
}
