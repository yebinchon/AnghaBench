
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_trans_cookie {int dummy; } ;
struct ldc_channel {int dummy; } ;


 int kfree (void*) ;
 int ldc_unmap (struct ldc_channel*,struct ldc_trans_cookie*,int) ;

void ldc_free_exp_dring(struct ldc_channel *lp, void *buf, unsigned int len,
   struct ldc_trans_cookie *cookies, int ncookies)
{
 ldc_unmap(lp, cookies, ncookies);
 kfree(buf);
}
