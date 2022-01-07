
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** check ;
 scalar_t__ crypto_has_alg (char*,int ,int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void test_available(void)
{
 char **name = check;

 while (*name) {
  printk("alg %s ", *name);
  printk(crypto_has_alg(*name, 0, 0) ?
         "found\n" : "not found\n");
  name++;
 }
}
