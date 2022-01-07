
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtrr_iter {int dummy; } ;


 int __mtrr_lookup_var_next (struct mtrr_iter*) ;

__attribute__((used)) static void mtrr_lookup_var_next(struct mtrr_iter *iter)
{
 __mtrr_lookup_var_next(iter);
}
