
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp_struct {int dev; int bits; } ;


 int LP_PARPORT_CLAIMED ;
 int parport_release (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void lp_release_parport(struct lp_struct *this_lp)
{
 if (test_and_clear_bit(LP_PARPORT_CLAIMED, &this_lp->bits)) {
  parport_release(this_lp->dev);
 }
}
