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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct inode *old_dir, struct dentry *old_dentry,
			   struct inode *new_dir, struct dentry *new_dentry,
			   unsigned int flags)
{
	if (FUNC0(old_dentry) ||
	    FUNC0(new_dentry))
		return -EPERM;

	return FUNC1(old_dir, old_dentry, new_dir, new_dentry, flags);
}