
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {scalar_t__ key; int num_scratch_pages; int type; int * pages; } ;


 int AGP_NORMAL_MEMORY ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int agp_alloc_page_array (int,struct agp_memory*) ;
 int agp_free_key (scalar_t__) ;
 scalar_t__ agp_get_key () ;
 int kfree (struct agp_memory*) ;
 struct agp_memory* kzalloc (int,int ) ;

struct agp_memory *agp_create_memory(int scratch_pages)
{
 struct agp_memory *new;

 new = kzalloc(sizeof(struct agp_memory), GFP_KERNEL);
 if (new == ((void*)0))
  return ((void*)0);

 new->key = agp_get_key();

 if (new->key < 0) {
  kfree(new);
  return ((void*)0);
 }

 agp_alloc_page_array(PAGE_SIZE * scratch_pages, new);

 if (new->pages == ((void*)0)) {
  agp_free_key(new->key);
  kfree(new);
  return ((void*)0);
 }
 new->num_scratch_pages = scratch_pages;
 new->type = AGP_NORMAL_MEMORY;
 return new;
}
