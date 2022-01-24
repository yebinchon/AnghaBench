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
struct proc_user_info {scalar_t__ seq_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc_user_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_user_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

void FUNC3 (struct proc_user_info *S, struct proc_user_info *L) {
  L->seq_no = S->seq_no + 1;
  FUNC0 (S);
  FUNC2 ((char *) S, (char *) L, 128);
  FUNC1 (S);
}