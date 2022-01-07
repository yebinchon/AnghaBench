
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_info {int flags; } ;


 int ENTRY_IN_USE ;
 struct alloc_info* simple_find_entry (void*) ;

__attribute__((used)) static void simple_free(void *ptr)
{
 struct alloc_info *p = simple_find_entry(ptr);

 if (p != ((void*)0))
  p->flags &= ~ENTRY_IN_USE;
}
