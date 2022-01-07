
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_trng {scalar_t__ base; } ;


 scalar_t__ TRNG_CR ;
 int TRNG_KEY ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void atmel_trng_enable(struct atmel_trng *trng)
{
 writel(TRNG_KEY | 1, trng->base + TRNG_CR);
}
