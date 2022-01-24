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
struct tl_token {struct tl_token* next; int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2 (struct tl_token *L, struct tl_token *R) {
  FUNC0 (L != NULL && R != NULL);
  if (FUNC1 (L->text, R->text)) {
    return 0;
  }
  while (L && R) {
    L = L->next;
    R = R->next;
  }
  return (L == NULL && R == NULL) ? 1 : 0;
}