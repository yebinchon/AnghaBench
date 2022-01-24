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
struct rdtgroup {int /*<<< orphan*/  kn; } ;
struct kernfs_node {int dummy; } ;
struct iattr {int /*<<< orphan*/  ia_mode; int /*<<< orphan*/  ia_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int ENOENT ; 
#define  KERNFS_DIR 130 
#define  KERNFS_FILE 129 
#define  KERNFS_LINK 128 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  S_IFLNK ; 
 int /*<<< orphan*/  S_IFREG ; 
 struct kernfs_node* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int FUNC2 (struct kernfs_node*,struct iattr*) ; 
 int FUNC3 (struct kernfs_node*) ; 

int FUNC4(struct rdtgroup *r, const char *name)
{
	struct iattr iattr = {.ia_valid = ATTR_MODE,};
	struct kernfs_node *kn;
	int ret = 0;

	kn = FUNC0(r->kn, name, NULL);
	if (!kn)
		return -ENOENT;

	switch (FUNC3(kn)) {
	case KERNFS_DIR:
		iattr.ia_mode = S_IFDIR;
		break;
	case KERNFS_FILE:
		iattr.ia_mode = S_IFREG;
		break;
	case KERNFS_LINK:
		iattr.ia_mode = S_IFLNK;
		break;
	}

	ret = FUNC2(kn, &iattr);
	FUNC1(kn);
	return ret;
}