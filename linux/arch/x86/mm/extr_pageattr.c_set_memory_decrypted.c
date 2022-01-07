
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_memory_enc_dec (unsigned long,int,int) ;

int set_memory_decrypted(unsigned long addr, int numpages)
{
 return __set_memory_enc_dec(addr, numpages, 0);
}
