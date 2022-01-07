
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmp_names (const void *a, const void *b) {
  return strcmp ((*((const struct filesys_directory_node **) a))->name,
                 (*((const struct filesys_directory_node **) b))->name);
}
