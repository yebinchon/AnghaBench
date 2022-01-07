
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {scalar_t__ old_data; scalar_t__ data; } ;


 int jent_fips_enabled () ;
 int jent_gen_entropy (struct rand_data*) ;
 int jent_panic (char*) ;

__attribute__((used)) static void jent_fips_test(struct rand_data *ec)
{
 if (!jent_fips_enabled())
  return;


 if (!ec->old_data) {
  ec->old_data = ec->data;
  jent_gen_entropy(ec);
 }

 if (ec->data == ec->old_data)
  jent_panic("jitterentropy: Duplicate output detected\n");

 ec->old_data = ec->data;
}
