
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_test_sglists {int src; int dst; } ;


 int GFP_KERNEL ;
 int destroy_test_sglist (int *) ;
 scalar_t__ init_test_sglist (int *) ;
 int kfree (struct cipher_test_sglists*) ;
 struct cipher_test_sglists* kmalloc (int,int ) ;

__attribute__((used)) static struct cipher_test_sglists *alloc_cipher_test_sglists(void)
{
 struct cipher_test_sglists *tsgls;

 tsgls = kmalloc(sizeof(*tsgls), GFP_KERNEL);
 if (!tsgls)
  return ((void*)0);

 if (init_test_sglist(&tsgls->src) != 0)
  goto fail_kfree;
 if (init_test_sglist(&tsgls->dst) != 0)
  goto fail_destroy_src;

 return tsgls;

fail_destroy_src:
 destroy_test_sglist(&tsgls->src);
fail_kfree:
 kfree(tsgls);
 return ((void*)0);
}
