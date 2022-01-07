
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THREAD_SIZE_ORDER ;
 int free_pages (unsigned long,int ) ;
 int vfree (void*) ;

void stack_free(unsigned long stack)
{



 free_pages(stack, THREAD_SIZE_ORDER);

}
