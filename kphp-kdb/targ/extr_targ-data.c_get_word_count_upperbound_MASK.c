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
struct hash_word {int num; } ;
typedef  int /*<<< orphan*/  hash_t ;

/* Variables and functions */
 struct hash_word* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2 (hash_t word, int *is_exact) {
  struct hash_word *W = FUNC0 (word, 0);
  int a = FUNC1 (word);
  int b = (W ? W->num : 0);
  *is_exact = (!a || !b);
  return a + b;
}