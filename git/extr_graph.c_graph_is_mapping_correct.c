
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_graph {int mapping_size; int* mapping; } ;



__attribute__((used)) static int graph_is_mapping_correct(struct git_graph *graph)
{
 int i;







 for (i = 0; i < graph->mapping_size; i++) {
  int target = graph->mapping[i];
  if (target < 0)
   continue;
  if (target == (i / 2))
   continue;
  return 0;
 }

 return 1;
}
