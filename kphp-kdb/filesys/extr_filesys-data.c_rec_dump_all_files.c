
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {char* name; scalar_t__ inode; struct filesys_directory_node* next; struct filesys_directory_node* head; } ;


 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void rec_dump_all_files (struct filesys_directory_node *D, int depth) {
  int i;
  for (i = 0; i < 2 * depth; i++) {
    fprintf (stderr, " ");
  }
  fprintf (stderr, "%s\n", D->name);
  if (D->inode >= 0) { return; }
  struct filesys_directory_node *T = D->head;
  while (T != ((void*)0)) {
    rec_dump_all_files (T, depth + 1);
    T = T->next;
  }
}
