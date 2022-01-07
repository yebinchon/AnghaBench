
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int dummy; } ;


 int NODE_TYPE_MINUS ;
 int NODE_TYPE_PLUS ;
 scalar_t__ NODE_TYPE_S (struct item*) ;
 int NODE_TYPE_T (struct item*) ;
 scalar_t__ NODE_TYPE_UNSURE ;

__attribute__((used)) static void tree_count_one (struct item *T, int Z[3]) {
  int x = NODE_TYPE_T (T);
  int u = NODE_TYPE_S (T) == NODE_TYPE_UNSURE;
  if (x == NODE_TYPE_PLUS) {
    Z[0] ++;
    if (u) { Z[2] ++; }
  } else if (x == NODE_TYPE_MINUS) {
    Z[0] --;
    if (u) { Z[1] ++; }
  }
}
