
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int early_set_memory_decrypted (unsigned long,unsigned long) ;

__attribute__((used)) static inline void __set_percpu_decrypted(void *ptr, unsigned long size)
{
 early_set_memory_decrypted((unsigned long) ptr, size);
}
