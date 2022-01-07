
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipic {int dummy; } ;


 struct ipic* primary_ipic ;

__attribute__((used)) static inline struct ipic * ipic_from_irq(unsigned int virq)
{
 return primary_ipic;
}
