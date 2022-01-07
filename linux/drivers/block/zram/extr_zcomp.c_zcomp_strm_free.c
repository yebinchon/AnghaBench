
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcomp_strm {scalar_t__ buffer; int tfm; } ;


 int IS_ERR_OR_NULL (int ) ;
 int crypto_free_comp (int ) ;
 int free_pages (unsigned long,int) ;
 int kfree (struct zcomp_strm*) ;

__attribute__((used)) static void zcomp_strm_free(struct zcomp_strm *zstrm)
{
 if (!IS_ERR_OR_NULL(zstrm->tfm))
  crypto_free_comp(zstrm->tfm);
 free_pages((unsigned long)zstrm->buffer, 1);
 kfree(zstrm);
}
