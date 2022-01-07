
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct crypto_alg {int dummy; } ;


 int seedsize (struct crypto_alg*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void crypto_rng_show(struct seq_file *m, struct crypto_alg *alg)
{
 seq_printf(m, "type         : rng\n");
 seq_printf(m, "seedsize     : %u\n", seedsize(alg));
}
