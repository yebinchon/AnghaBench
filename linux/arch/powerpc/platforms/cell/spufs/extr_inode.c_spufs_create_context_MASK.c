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
typedef  int umode_t ;
struct vfsmount {int dummy; } ;
struct spu_gang {int /*<<< orphan*/  aff_mutex; } ;
struct spu_context {int dummy; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_ctx; struct spu_gang* i_gang; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct spu_context*) ; 
 int FUNC1 (struct spu_context*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int SPU_CREATE_AFFINITY_MEM ; 
 int SPU_CREATE_AFFINITY_SPU ; 
 int SPU_CREATE_ISOLATE ; 
 int SPU_CREATE_NOSCHED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  isolated_loader ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct spu_context*) ; 
 struct spu_context* FUNC9 (int,struct spu_gang*,struct file*) ; 
 int FUNC10 (struct path*) ; 
 int FUNC11 (struct inode*,struct dentry*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,struct spu_context*) ; 

__attribute__((used)) static int
FUNC14(struct inode *inode, struct dentry *dentry,
			struct vfsmount *mnt, int flags, umode_t mode,
			struct file *aff_filp)
{
	int ret;
	int affinity;
	struct spu_gang *gang;
	struct spu_context *neighbor;
	struct path path = {.mnt = mnt, .dentry = dentry};

	if ((flags & SPU_CREATE_NOSCHED) &&
	    !FUNC4(CAP_SYS_NICE))
		return -EPERM;

	if ((flags & (SPU_CREATE_NOSCHED | SPU_CREATE_ISOLATE))
	    == SPU_CREATE_ISOLATE)
		return -EINVAL;

	if ((flags & SPU_CREATE_ISOLATE) && !isolated_loader)
		return -ENODEV;

	gang = NULL;
	neighbor = NULL;
	affinity = flags & (SPU_CREATE_AFFINITY_MEM | SPU_CREATE_AFFINITY_SPU);
	if (affinity) {
		gang = FUNC2(inode)->i_gang;
		if (!gang)
			return -EINVAL;
		FUNC6(&gang->aff_mutex);
		neighbor = FUNC9(flags, gang, aff_filp);
		if (FUNC0(neighbor)) {
			ret = FUNC1(neighbor);
			goto out_aff_unlock;
		}
	}

	ret = FUNC11(inode, dentry, flags, mode & 0777);
	if (ret)
		goto out_aff_unlock;

	if (affinity) {
		FUNC13(flags, FUNC2(FUNC5(dentry))->i_ctx,
								neighbor);
		if (neighbor)
			FUNC8(neighbor);
	}

	ret = FUNC10(&path);
	if (ret < 0)
		FUNC3(FUNC12(inode, dentry));

out_aff_unlock:
	if (affinity)
		FUNC7(&gang->aff_mutex);
	return ret;
}