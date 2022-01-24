#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct filesys_directory_node {int mode; int uid; int gid; int modification_time; int inode; int* name; struct filesys_directory_node* next; struct filesys_directory_node* head; struct filesys_directory_node* parent; } ;
typedef  int /*<<< orphan*/  l ;
typedef  int inode_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  tot_directory_nodes ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int*) ; 
 int* FUNC3 (int) ; 
 struct filesys_directory_node* FUNC4 (int) ; 

__attribute__((used)) static struct filesys_directory_node *FUNC5 (struct filesys_directory_node *parent) {
  inode_id_t inode;
  FUNC1 (&inode, sizeof (inode_id_t));
  FUNC0 (inode >= -2);
  if (inode == -2LL) {
    return NULL;
  }
  tot_directory_nodes++;
  struct filesys_directory_node *T = FUNC4 (sizeof (struct filesys_directory_node));
  FUNC1 (&T->mode, sizeof (T->mode));
  FUNC1 (&T->uid, sizeof (T->uid));
  FUNC1 (&T->gid, sizeof (T->gid));
  FUNC1 (&T->modification_time, sizeof (T->modification_time));
  int l;
  FUNC1 (&l, sizeof (l));
  T->inode = inode;
  T->parent = parent;
  T->name = FUNC3 (l + 1);
  T->head = NULL;
  struct filesys_directory_node *tail = NULL;
  FUNC1 (T->name, l);
  T->name[l] = 0;

  FUNC2 (3, "load_index: %s\n", T->name);

  if (T->inode < 0) {
    struct filesys_directory_node *P;
    while ((P = FUNC5 (T)) != NULL ) {
      if (T->head == NULL) {
        T->head = tail = P;
      } else {
        tail->next = P;
        tail = P;
      }
    }
  }
  return T;
}