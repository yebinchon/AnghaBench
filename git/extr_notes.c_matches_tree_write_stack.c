
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_write_stack {char const* path; } ;



__attribute__((used)) static inline int matches_tree_write_stack(struct tree_write_stack *tws,
  const char *full_path)
{
 return full_path[0] == tws->path[0] &&
  full_path[1] == tws->path[1] &&
  full_path[2] == '/';
}
