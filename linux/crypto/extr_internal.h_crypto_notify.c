
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blocking_notifier_call_chain (int *,unsigned long,void*) ;
 int crypto_chain ;

__attribute__((used)) static inline void crypto_notify(unsigned long val, void *v)
{
 blocking_notifier_call_chain(&crypto_chain, val, v);
}
