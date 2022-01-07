
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct af_alg_sgl {scalar_t__ sg; scalar_t__ npages; } ;


 int sg_chain (scalar_t__,scalar_t__,scalar_t__) ;
 int sg_unmark_end (scalar_t__) ;

__attribute__((used)) static void af_alg_link_sg(struct af_alg_sgl *sgl_prev,
      struct af_alg_sgl *sgl_new)
{
 sg_unmark_end(sgl_prev->sg + sgl_prev->npages - 1);
 sg_chain(sgl_prev->sg, sgl_prev->npages + 1, sgl_new->sg);
}
