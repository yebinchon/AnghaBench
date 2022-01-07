
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* rates; int mask; } ;
typedef TYPE_1__ item_t ;


 long long INT_MAX ;
 long long INT_MIN ;
 int Q_type ;
 int get_bitno (int ,int ) ;
 int order ;

__attribute__((used)) static int mix_priority_with_rating (item_t *I, int priority) {
  long long rr = ((order == 1) ? (5 - priority) : (priority - 5)) * 100000000;
  int p = get_bitno (I->mask, Q_type);
  if (p != -1) {
    rr += I->rates[p];
  }
  if (rr < INT_MIN) { return INT_MIN; }
  if (rr > INT_MAX) { return INT_MAX; }
  return rr;
}
