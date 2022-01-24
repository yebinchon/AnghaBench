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
struct sublist_descr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Sublists ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sublist_descr*,int /*<<< orphan*/ ,int) ; 
 int sublists_num ; 

int FUNC2 (struct sublist_descr *A) {
  FUNC0 (sublists_num >= 0 && sublists_num <= 16);
  FUNC1 (A, Sublists, sizeof (struct sublist_descr) * sublists_num);
  return sublists_num;
}