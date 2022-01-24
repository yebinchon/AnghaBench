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
struct tl_constructor {char* id; } ;

/* Variables and functions */
 char* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  tl_function_tree ; 
 struct tl_constructor** FUNC1 (int /*<<< orphan*/ ,struct tl_constructor*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

struct tl_constructor *FUNC3 (const char *_id, int len) {
  char *id = FUNC0 (_id, len);
  struct tl_constructor _t = {.id = id};
  struct tl_constructor **r = FUNC1 (tl_function_tree, &_t);
  FUNC2 (id, len + 1);
  return r ? *r : 0;
}