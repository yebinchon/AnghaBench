#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct scom_debug_entry* data; int /*<<< orphan*/  size; } ;
struct scom_debug_entry {int chip; TYPE_1__ path; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,TYPE_1__*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct scom_debug_entry*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct scom_debug_entry*) ; 
 struct scom_debug_entry* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scom_debug_fops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct dentry *root, struct device_node *dn,
			       int chip)
{
	struct scom_debug_entry *ent;
	struct dentry *dir;

	ent = FUNC5(sizeof(*ent), GFP_KERNEL);
	if (!ent)
		return -ENOMEM;

	ent->chip = chip;
	FUNC6(ent->name, 16, "%08x", chip);
	ent->path.data = (void *)FUNC3(GFP_KERNEL, "%pOF", dn);
	ent->path.size = FUNC7((char *)ent->path.data);

	dir = FUNC1(ent->name, root);
	if (!dir) {
		FUNC4(ent->path.data);
		FUNC4(ent);
		return -1;
	}

	FUNC0("devspec", 0400, dir, &ent->path);
	FUNC2("access", 0600, dir, ent, &scom_debug_fops);

	return 0;
}