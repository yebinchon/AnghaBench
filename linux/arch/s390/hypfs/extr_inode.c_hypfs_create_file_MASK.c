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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {char* i_private; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; scalar_t__ i_size; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  hypfs_file_ops ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC13 (char const*,struct dentry*,scalar_t__) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 scalar_t__ FUNC14 (char const*) ; 

__attribute__((used)) static struct dentry *FUNC15(struct dentry *parent, const char *name,
					char *data, umode_t mode)
{
	struct dentry *dentry;
	struct inode *inode;

	FUNC11(FUNC5(parent));
	dentry = FUNC13(name, parent, FUNC14(name));
	if (FUNC2(dentry)) {
		dentry = FUNC1(-ENOMEM);
		goto fail;
	}
	inode = FUNC9(parent->d_sb, mode);
	if (!inode) {
		FUNC8(dentry);
		dentry = FUNC1(-ENOMEM);
		goto fail;
	}
	if (FUNC4(mode)) {
		inode->i_fop = &hypfs_file_ops;
		if (data)
			inode->i_size = FUNC14(data);
		else
			inode->i_size = 0;
	} else if (FUNC3(mode)) {
		inode->i_op = &simple_dir_inode_operations;
		inode->i_fop = &simple_dir_operations;
		FUNC10(FUNC5(parent));
	} else
		FUNC0();
	inode->i_private = data;
	FUNC6(dentry, inode);
	FUNC7(dentry);
fail:
	FUNC12(FUNC5(parent));
	return dentry;
}