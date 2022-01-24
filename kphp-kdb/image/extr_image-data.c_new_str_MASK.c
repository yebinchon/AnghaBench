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
struct stack_entry {char* a; int /*<<< orphan*/  tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ft_str ; 
 char* FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1 (struct stack_entry *E, char *str, int clone) {
  E->a = clone ? FUNC0 (str) : str;
  E->tp = ft_str;
}