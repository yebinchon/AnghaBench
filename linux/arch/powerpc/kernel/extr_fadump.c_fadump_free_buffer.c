
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_reserved_area (void*,void*,int,int *) ;

__attribute__((used)) static void fadump_free_buffer(unsigned long vaddr, unsigned long size)
{
 free_reserved_area((void *)vaddr, (void *)(vaddr + size), -1, ((void*)0));
}
