
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct union_heap_entry {int dummy; } ;


 int UH ;
 int UH_allocated ;
 int UH_limit ;
 scalar_t__ UH_size ;
 scalar_t__ UH_total ;
 int assert (int) ;
 int free (int) ;
 int malloc (int) ;

__attribute__((used)) static void union_heap_init (int size) {
  if (UH_allocated < size) {
    if (UH_allocated) {
      free (UH);
    }
    UH = malloc (sizeof (struct union_heap_entry) * (size + 1));
    assert (UH);
    UH_allocated = size;
  }
  assert (size <= UH_allocated);
  UH_limit = size;
  UH_size = 0;
  UH_total = 0;
}
