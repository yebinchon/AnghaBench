
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct test_sglist {unsigned int nents; TYPE_2__* sgl_saved; TYPE_1__* sgl; } ;
struct TYPE_4__ {scalar_t__ page_link; scalar_t__ offset; scalar_t__ length; } ;
struct TYPE_3__ {scalar_t__ page_link; scalar_t__ offset; scalar_t__ length; } ;



__attribute__((used)) static bool is_test_sglist_corrupted(const struct test_sglist *tsgl)
{
 unsigned int i;

 for (i = 0; i < tsgl->nents; i++) {
  if (tsgl->sgl[i].page_link != tsgl->sgl_saved[i].page_link)
   return 1;
  if (tsgl->sgl[i].offset != tsgl->sgl_saved[i].offset)
   return 1;
  if (tsgl->sgl[i].length != tsgl->sgl_saved[i].length)
   return 1;
 }
 return 0;
}
