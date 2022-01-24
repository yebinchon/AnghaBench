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
struct tl_token {struct tl_token* next; } ;
struct tl_expression {struct tl_token* right; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_token*) ; 
 int /*<<< orphan*/  FUNC1 (struct tl_token*) ; 

int FUNC2 (struct tl_expression *E) {
  struct tl_token *u = E->right;
  if (u == NULL) {
    return 0;
  }
  if (!FUNC0 (u)) {
    return 0;
  }
  u = u->next;
  if (u == NULL) {
    return 0;
  }
  while (u != NULL) {
    if (!FUNC1 (u)) {
      return 0;
    }
    u = u->next;
  }
  return 1;
}