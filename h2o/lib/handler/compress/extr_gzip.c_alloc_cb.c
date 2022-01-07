
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* h2o_mem_alloc (unsigned int) ;

__attribute__((used)) static void *alloc_cb(void *_unused, unsigned int cnt, unsigned int sz)
{
    return h2o_mem_alloc(cnt * (size_t)sz);
}
