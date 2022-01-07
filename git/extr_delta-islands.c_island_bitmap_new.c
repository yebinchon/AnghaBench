
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct island_bitmap {int refcount; } ;


 int island_bitmap_size ;
 int memcpy (struct island_bitmap*,struct island_bitmap const*,size_t) ;
 struct island_bitmap* xcalloc (int,size_t) ;

__attribute__((used)) static struct island_bitmap *island_bitmap_new(const struct island_bitmap *old)
{
 size_t size = sizeof(struct island_bitmap) + (island_bitmap_size * 4);
 struct island_bitmap *b = xcalloc(1, size);

 if (old)
  memcpy(b, old, size);

 b->refcount = 1;
 return b;
}
