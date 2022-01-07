
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item_id; } ;
typedef TYPE_1__ item_t ;


 long long INT_MAX ;
 long long INT_MIN ;
 scalar_t__ get_object_id (int ) ;
 int order ;

__attribute__((used)) static int mix_priority_with_object_id (item_t *I, int priority) {
  long long rr = ((order == 1) ? (5 - priority) : (priority - 5)) * 200000000;
  rr += get_object_id (I->item_id);
  if (rr < INT_MIN) { return INT_MIN; }
  if (rr > INT_MAX) { return INT_MAX; }
  return rr;
}
