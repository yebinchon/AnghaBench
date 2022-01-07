
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filesys_tree_t ;


 int fprintf (int ,char*) ;
 int rec_dump_tree (int *,int ) ;
 int stderr ;

void filesys_dump_tree (filesys_tree_t *T) {
  fprintf (stderr, "================= Tree =======================\n");
  rec_dump_tree (T, 0);
  fprintf (stderr, "==============================================\n");
}
