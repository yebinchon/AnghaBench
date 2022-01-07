
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_kernel_space () ;
 int mtsp (int ,int) ;
 int pa_memcpy (void*,void const*,size_t) ;

void * memcpy(void * dst,const void *src, size_t count)
{
 mtsp(get_kernel_space(), 1);
 mtsp(get_kernel_space(), 2);
 pa_memcpy(dst, src, count);
 return dst;
}
