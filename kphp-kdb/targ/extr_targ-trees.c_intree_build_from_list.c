
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef void* treeref_t ;
struct intree_node {int left; void* right; int z; int x; } ;


 unsigned int NODE_Y (struct intree_node*,void*) ;
 struct intree_node* TS_NODE (void*) ;
 int assert (int) ;
 void* new_intree_node (int ) ;

treeref_t intree_build_from_list (treespace_t TS, int *A, int nodes) {
  if (!nodes) {
    return 0;
  }
  static treeref_t st[128];
  static unsigned sty[128];
  int sp = 0, i, prev = 0;
  for (i = 0; i < nodes; i++) {
    assert (*A > prev);
    prev = *A;
    treeref_t N = new_intree_node (TS);
    struct intree_node *NP = TS_NODE (N);
    NP->x = *A++;
    NP->z = *A++;
    unsigned NY = NODE_Y(NP, N);
    int last = 0;
    while (sp) {
      if (NY <= sty[sp - 1]) {
 struct intree_node *TC = TS_NODE (st[sp - 1]);
 TC->right = N;
 break;
      }
      last = st[--sp];
    }
    NP->left = last;
    NP->right = 0;
    st[sp] = N;
    sty[sp] = NY;
    assert (++sp < 128);
  }

  return st[0];
}
