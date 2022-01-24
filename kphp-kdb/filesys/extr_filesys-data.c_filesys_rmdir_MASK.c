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
struct filesys_directory_node {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct filesys_directory_node*) ; 
 struct filesys_directory_node* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lf_rmdir ; 

__attribute__((used)) static int FUNC2 (const char *path) {
  struct filesys_directory_node *D = FUNC1 (path, lf_rmdir);
  if (D == NULL) {
    return -ENOENT;
  }
  FUNC0 (D);
  return 0;
}