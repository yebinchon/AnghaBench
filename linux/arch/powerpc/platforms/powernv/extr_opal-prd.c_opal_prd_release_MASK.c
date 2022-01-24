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
struct opal_prd_msg_header {int /*<<< orphan*/  type; int /*<<< orphan*/  size; } ;
struct opal_prd_msg {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_PRD_MSG_TYPE_FINI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct opal_prd_msg*) ; 
 int /*<<< orphan*/  prd_usage ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct opal_prd_msg_header msg;

	msg.size = FUNC1(sizeof(msg));
	msg.type = OPAL_PRD_MSG_TYPE_FINI;

	FUNC2((struct opal_prd_msg *)&msg);

	FUNC0(&prd_usage, 0);

	return 0;
}