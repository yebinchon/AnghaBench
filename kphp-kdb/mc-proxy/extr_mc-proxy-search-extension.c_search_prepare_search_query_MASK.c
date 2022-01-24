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
 int is_search ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC1 (const char *key, int len) {
  if (!FUNC0 (key, "search", 6)) { 
    is_search = 1;
    return 6;
  } else { 
    return -1; 
  }
}