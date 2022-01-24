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
struct filesys_directory_node {char* name; scalar_t__ inode; struct filesys_directory_node* next; struct filesys_directory_node* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC1 (struct filesys_directory_node *D, int depth) {
  int i;
  for (i = 0; i < 2 * depth; i++) {
    FUNC0 (stderr, " ");
  }
  FUNC0 (stderr, "%s\n", D->name);
  if (D->inode >= 0) { return; }
  struct filesys_directory_node *T = D->head;
  while (T != NULL) {
    FUNC1 (T, depth + 1);
    T = T->next;
  }
}