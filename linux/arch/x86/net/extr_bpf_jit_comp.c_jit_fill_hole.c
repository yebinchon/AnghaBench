
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int,unsigned int) ;

__attribute__((used)) static void jit_fill_hole(void *area, unsigned int size)
{

 memset(area, 0xcc, size);
}
