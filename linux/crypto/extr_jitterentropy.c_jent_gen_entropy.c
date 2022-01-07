
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {unsigned int osr; } ;


 unsigned int DATA_SIZE_BITS ;
 scalar_t__ jent_measure_jitter (struct rand_data*) ;

__attribute__((used)) static void jent_gen_entropy(struct rand_data *ec)
{
 unsigned int k = 0;


 jent_measure_jitter(ec);

 while (1) {

  if (jent_measure_jitter(ec))
   continue;





  if (++k >= (DATA_SIZE_BITS * ec->osr))
   break;
 }
}
