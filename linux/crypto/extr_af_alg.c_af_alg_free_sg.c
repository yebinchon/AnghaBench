
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct af_alg_sgl {int npages; int * pages; } ;


 int put_page (int ) ;

void af_alg_free_sg(struct af_alg_sgl *sgl)
{
 int i;

 for (i = 0; i < sgl->npages; i++)
  put_page(sgl->pages[i]);
}
