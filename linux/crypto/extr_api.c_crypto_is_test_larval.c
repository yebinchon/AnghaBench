
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* cra_driver_name; } ;
struct crypto_larval {TYPE_1__ alg; } ;



__attribute__((used)) static inline int crypto_is_test_larval(struct crypto_larval *larval)
{
 return larval->alg.cra_driver_name[0];
}
