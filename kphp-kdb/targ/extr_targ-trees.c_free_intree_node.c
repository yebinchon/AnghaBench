
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int treespace_t ;
typedef int treeref_t ;
struct TYPE_4__ {int free_queue_cnt; int * free_queue; } ;
struct TYPE_3__ {int left; } ;


 TYPE_2__* TS_HEADER ;
 TYPE_1__* TS_NODE (int ) ;
 int lrand48 () ;

inline void free_intree_node (treespace_t TS, treeref_t N) {
  int q = lrand48() & (TS_HEADER->free_queue_cnt - 1);
  TS_NODE(N)->left = TS_HEADER->free_queue[q*2];
  TS_HEADER->free_queue[q*2] = N;
  TS_HEADER->free_queue[q*2+1]++;
}
