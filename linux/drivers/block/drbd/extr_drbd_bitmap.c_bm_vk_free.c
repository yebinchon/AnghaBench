
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvfree (void*) ;

__attribute__((used)) static inline void bm_vk_free(void *ptr)
{
 kvfree(ptr);
}
