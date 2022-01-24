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
struct filesys_directory_node {int modification_time; } ;

/* Variables and functions */
 int ENOENT ; 
 struct filesys_directory_node* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lf_find ; 

__attribute__((used)) static int FUNC1 (const char *path, int modification_time) {
  struct filesys_directory_node *D = FUNC0 (path, lf_find);
  if (D == NULL) {
    return -ENOENT;
  }
  D->modification_time = modification_time;
  return 0;
}