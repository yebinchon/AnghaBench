
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kstring_t ;
typedef int knhx1_t ;


 int format_node_recur (int const*,int const*,int *,char*) ;

void kn_format(const knhx1_t *node, int root, kstring_t *s)
{
 char numbuf[128];
 format_node_recur(node, &node[root], s, numbuf);
}
