
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_handle {unsigned int handle_size; int refcnt; void* self_base; int list; int mdesc; } ;


 int BUG_ON (unsigned long) ;
 int INIT_LIST_HEAD (int *) ;
 int memset (struct mdesc_handle*,int ,unsigned int) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static void mdesc_handle_init(struct mdesc_handle *hp,
         unsigned int handle_size,
         void *base)
{
 BUG_ON(((unsigned long)&hp->mdesc) & (16UL - 1));

 memset(hp, 0, handle_size);
 INIT_LIST_HEAD(&hp->list);
 hp->self_base = base;
 refcount_set(&hp->refcnt, 1);
 hp->handle_size = handle_size;
}
