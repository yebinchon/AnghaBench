
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __text_poke (void*,void const*,size_t) ;
 int lockdep_assert_held (int *) ;
 int text_mutex ;

void *text_poke(void *addr, const void *opcode, size_t len)
{
 lockdep_assert_held(&text_mutex);

 return __text_poke(addr, opcode, len);
}
