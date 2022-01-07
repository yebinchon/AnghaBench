
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_test_sglists {int dst; int src; } ;


 int destroy_test_sglist (int *) ;
 int kfree (struct cipher_test_sglists*) ;

__attribute__((used)) static void free_cipher_test_sglists(struct cipher_test_sglists *tsgls)
{
 if (tsgls) {
  destroy_test_sglist(&tsgls->src);
  destroy_test_sglist(&tsgls->dst);
  kfree(tsgls);
 }
}
