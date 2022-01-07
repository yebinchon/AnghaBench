
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_id {scalar_t__ idx; scalar_t__ val; } ;



int cn_cb_equal(struct cb_id *i1, struct cb_id *i2)
{
 return ((i1->idx == i2->idx) && (i1->val == i2->val));
}
