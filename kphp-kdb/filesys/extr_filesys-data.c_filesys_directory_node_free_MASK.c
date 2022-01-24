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
struct filesys_directory_node {struct filesys_directory_node* name; } ;

/* Variables and functions */
 int FUNC0 (struct filesys_directory_node*) ; 
 int /*<<< orphan*/  tot_directory_nodes ; 
 int /*<<< orphan*/  FUNC1 (struct filesys_directory_node*,int) ; 

__attribute__((used)) static void FUNC2 (struct filesys_directory_node *D) {
  tot_directory_nodes--;
  if (D->name != NULL) {
    FUNC1 (D->name, FUNC0 (D->name) + 1);
  }
  FUNC1 (D, sizeof (struct filesys_directory_node));
}