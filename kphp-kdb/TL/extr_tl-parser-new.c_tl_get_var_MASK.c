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
struct tl_var {char* id; } ;

/* Variables and functions */
 char* FUNC0 (char*,int) ; 
 int namespace_level ; 
 struct tl_var** FUNC1 (int /*<<< orphan*/ ,struct tl_var*) ; 
 int /*<<< orphan*/ * vars ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

struct tl_var *FUNC3 (char *_id, int len) {
  char *id = FUNC0 (_id, len);
  struct tl_var v = {.id = id};
  int i;
  for (i = namespace_level; i >= 0; i--) {
    struct tl_var **w = FUNC1 (vars[i], &v);
    if (w) {
      FUNC2 (id, len + 1);
      return *w;
    }
  }
  return 0;
}