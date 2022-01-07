
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_node {int * a; } ;


 int GET_PTR_TYPE (int ) ;



__attribute__((used)) static unsigned char determine_fanout(struct int_node *tree, unsigned char n,
  unsigned char fanout)
{
 unsigned int i;
 if ((n % 2) || (n > 2 * fanout))
  return fanout;
 for (i = 0; i < 16; i++) {
  switch (GET_PTR_TYPE(tree->a[i])) {
  case 128:
  case 129:
   continue;
  default:
   return fanout;
  }
 }
 return fanout + 1;
}
