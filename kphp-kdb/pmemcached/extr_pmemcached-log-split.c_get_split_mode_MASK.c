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
 int SM_DOT ; 
 int SM_FIRSTINT ; 
 int SM_HASH ; 
 int SM_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

int FUNC1 (char *str) {
  if (!FUNC0 (str, "hash", 4)) {
    return SM_HASH;
  } else if (!FUNC0 (str, "firstint", 8)) {
    return SM_FIRSTINT;
  } else if (!FUNC0 (str, "dot", 4)) {
    return SM_DOT;
  }
  return SM_NONE;
}