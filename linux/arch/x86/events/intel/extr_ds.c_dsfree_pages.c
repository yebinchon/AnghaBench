
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;

__attribute__((used)) static void dsfree_pages(const void *buffer, size_t size)
{
 if (buffer)
  free_pages((unsigned long)buffer, get_order(size));
}
