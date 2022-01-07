
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_islands_todo {int depth; } ;



__attribute__((used)) static int tree_depth_compare(const void *a, const void *b)
{
 const struct tree_islands_todo *todo_a = a;
 const struct tree_islands_todo *todo_b = b;

 return todo_a->depth - todo_b->depth;
}
