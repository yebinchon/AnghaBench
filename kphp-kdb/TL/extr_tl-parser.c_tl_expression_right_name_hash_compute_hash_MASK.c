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
struct tl_hashmap {int dummy; } ;
struct tl_expression {int /*<<< orphan*/  right_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_hashmap*,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void FUNC1 (struct tl_hashmap *self, void *p, int *h1, int *h2) {
  const struct tl_expression *E = p;
  FUNC0 (self, E->right_name, h1, h2);
}