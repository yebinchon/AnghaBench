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
struct unl {int dummy; } ;
struct nl_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  request_single_cb ; 
 int FUNC0 (struct unl*,struct nl_msg*,int /*<<< orphan*/ ,struct nl_msg**) ; 

int FUNC1(struct unl *unl, struct nl_msg *msg, struct nl_msg **dest)
{
	*dest = NULL;
	return FUNC0(unl, msg, request_single_cb, dest);
}