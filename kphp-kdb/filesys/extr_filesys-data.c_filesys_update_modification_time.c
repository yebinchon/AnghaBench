
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {struct filesys_directory_node* parent; int modification_time; } ;


 int now ;

__attribute__((used)) static void filesys_update_modification_time (struct filesys_directory_node *T) {
  while (T != ((void*)0)) {
    T->modification_time = now;
    T = T->parent;
  }
}
