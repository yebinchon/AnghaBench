
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct relocs {int count; int size; int * offset; } ;


 int die (char*,unsigned long) ;
 void* realloc (int *,unsigned long) ;

__attribute__((used)) static void add_reloc(struct relocs *r, uint32_t offset)
{
 if (r->count == r->size) {
  unsigned long newsize = r->size + 50000;
  void *mem = realloc(r->offset, newsize * sizeof(r->offset[0]));

  if (!mem)
   die("realloc of %ld entries for relocs failed\n",
                                newsize);
  r->offset = mem;
  r->size = newsize;
 }
 r->offset[r->count++] = offset;
}
