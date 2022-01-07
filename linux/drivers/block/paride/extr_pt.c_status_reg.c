
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_adapter {int dummy; } ;


 int pi_read_regr (struct pi_adapter*,int,int) ;

__attribute__((used)) static inline int status_reg(struct pi_adapter *pi)
{
 return pi_read_regr(pi, 1, 6);
}
