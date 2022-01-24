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
struct filesys_inode {int /*<<< orphan*/ * updates; scalar_t__ index_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filesys_inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tot_inodes ; 
 int /*<<< orphan*/  FUNC2 (struct filesys_inode*,int) ; 

__attribute__((used)) static void FUNC3 (struct filesys_inode *I) {
  if (I->index_data) {
    FUNC0 (I);
  }
  FUNC1 (I->updates);
  I->updates = NULL;
  tot_inodes--;
  FUNC2 (I, sizeof (struct filesys_inode));
}