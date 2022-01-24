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
struct tl_expression {int /*<<< orphan*/  text; } ;
struct tl_compiler {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct tl_compiler*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 

int FUNC3 (struct tl_compiler *C, struct tl_expression *E, char *buf) {
  FUNC2 (4, "tl_expression_remove_sugar (\"%s\")\n", buf);
  char *s;
  int n = 0;
  for (s = buf; *s; s++) {
    if (*s == '<') {
      *s = ' ';
      n++;
    } else if (*s == '>') {
      *s = ' ';
      if (--n < 0) {
        return FUNC1 (C, "tl_expression_remove_sugar: too many '>', expr: %s", E->text);
      }
    } else if (*s == ',') {
      if (n > 0) {
        *s = ' ';
      }
    }
  }
  if (n > 0) {
    return FUNC1 (C, "tl_expression_remove_sugar: too many '<', expr: %s", E->text);
  }
  FUNC0 (buf);
  FUNC2 (4, "after removing sugar: %s\n", buf);
  return 0;
}