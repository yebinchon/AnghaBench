
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatter_walk {int dummy; } ;


 scalar_t__ PageHighMem (int ) ;
 int kunmap_atomic (void*) ;
 int scatterwalk_page (struct scatter_walk*) ;

__attribute__((used)) static inline void skcipher_unmap(struct scatter_walk *walk, void *vaddr)
{
 if (PageHighMem(scatterwalk_page(walk)))
  kunmap_atomic(vaddr);
}
