
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __text_poke (void*,void const*,size_t) ;

void *text_poke_kgdb(void *addr, const void *opcode, size_t len)
{
 return __text_poke(addr, opcode, len);
}
