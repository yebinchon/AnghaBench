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
struct hints_gather_extra {int type; int num; int slice_limit; scalar_t__ need_latin; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

int FUNC2 (char *buff, char *key, int key_len, void *E) {
  FUNC0 (E != NULL);

  char *sbuff = buff;
  
  struct hints_gather_extra *ge = (struct hints_gather_extra *)E;
  
  buff += FUNC1 (buff, "gather_hints%s%d", ge->need_latin ? "_latin" : "", ge->uid);
  if (ge->type != -1) {
    buff += FUNC1 (buff, ",%d", ge->type);
  }
  if (ge->num != 0) {
    buff += FUNC1 (buff, "*%d", ge->num);
  }
  buff += FUNC1 (buff, "#%d", ge->slice_limit);
  
  while (*key != '(') {
    key++;
  }
  while (*key != ')') {
    *buff++ = *key++;
  }
  *buff++ = ')';

  *buff = 0;
  return buff - sbuff;
}