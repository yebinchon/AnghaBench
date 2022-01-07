
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MACHINE_IS_VM ;
 unsigned char* _ascebc ;
 unsigned char* _ascebc_500 ;

__attribute__((used)) static inline unsigned char
sclp_ascebc(unsigned char ch)
{
 return (MACHINE_IS_VM) ? _ascebc[ch] : _ascebc_500[ch];
}
