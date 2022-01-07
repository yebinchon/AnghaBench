
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_ALIGN (unsigned long) ;

__attribute__((used)) static void *page_align_ptr(void *ptr)
{
 return (void *) PAGE_ALIGN((unsigned long) ptr);
}
