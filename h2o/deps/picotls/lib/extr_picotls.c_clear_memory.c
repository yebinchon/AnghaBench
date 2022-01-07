
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void clear_memory(void *p, size_t len)
{
    if (len != 0)
        memset(p, 0, len);
}
