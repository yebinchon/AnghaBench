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
struct commit_message {int /*<<< orphan*/  message; int /*<<< orphan*/  subject; int /*<<< orphan*/  label; int /*<<< orphan*/  parent_label; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct commit *commit, struct commit_message *msg)
{
	FUNC0(msg->parent_label);
	FUNC0(msg->label);
	FUNC0(msg->subject);
	FUNC1(commit, msg->message);
}