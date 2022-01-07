
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int treespace_t ;
typedef scalar_t__ treeref_t ;
struct TYPE_2__ {int x; scalar_t__ right; scalar_t__ left; } ;


 TYPE_1__* TS_NODE (scalar_t__) ;

inline treeref_t intree_lookup (treespace_t TS, treeref_t T, int x) {
  while (T && TS_NODE(T)->x != x) {
    if (x < TS_NODE(T)->x) {
      T = TS_NODE(T)->left;
    } else {
      T = TS_NODE(T)->right;
    }
  }
  return T;
}
