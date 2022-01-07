
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int pages; } ;


 int kvfree (int ) ;

__attribute__((used)) static inline void agp_free_page_array(struct agp_memory *mem)
{
 kvfree(mem->pages);
}
