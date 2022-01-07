
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {struct filesys_directory_node* name; } ;


 int strlen (struct filesys_directory_node*) ;
 int tot_directory_nodes ;
 int zfree (struct filesys_directory_node*,int) ;

__attribute__((used)) static void filesys_directory_node_free (struct filesys_directory_node *D) {
  tot_directory_nodes--;
  if (D->name != ((void*)0)) {
    zfree (D->name, strlen (D->name) + 1);
  }
  zfree (D, sizeof (struct filesys_directory_node));
}
