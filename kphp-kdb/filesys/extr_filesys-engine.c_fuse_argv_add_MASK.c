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

/* Variables and functions */
 scalar_t__ MAX_FUSE_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ fuse_argc ; 
 char** fuse_argv ; 
 char* FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2 (char *s) {
  char *p;
  for (p = FUNC1 (s, "\t "); p != NULL; p = FUNC1 (NULL, "\t ")) {
    FUNC0 (fuse_argc < MAX_FUSE_PARAMS);
    fuse_argv[fuse_argc++] = p;
  }
}