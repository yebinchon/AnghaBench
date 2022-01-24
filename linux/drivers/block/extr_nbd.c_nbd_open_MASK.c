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
struct nbd_device {struct nbd_config* config; int /*<<< orphan*/  config_lock; int /*<<< orphan*/  refs; int /*<<< orphan*/  config_refs; } ;
struct nbd_config {int dummy; } ;
struct block_device {int bd_invalidated; TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct nbd_device* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nbd_config* FUNC2 () ; 
 scalar_t__ FUNC3 (struct nbd_config*) ; 
 int /*<<< orphan*/  nbd_index_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct block_device *bdev, fmode_t mode)
{
	struct nbd_device *nbd;
	int ret = 0;

	FUNC0(&nbd_index_mutex);
	nbd = bdev->bd_disk->private_data;
	if (!nbd) {
		ret = -ENXIO;
		goto out;
	}
	if (!FUNC5(&nbd->refs)) {
		ret = -ENXIO;
		goto out;
	}
	if (!FUNC5(&nbd->config_refs)) {
		struct nbd_config *config;

		FUNC0(&nbd->config_lock);
		if (FUNC5(&nbd->config_refs)) {
			FUNC1(&nbd->config_lock);
			goto out;
		}
		config = nbd->config = FUNC2();
		if (!config) {
			ret = -ENOMEM;
			FUNC1(&nbd->config_lock);
			goto out;
		}
		FUNC6(&nbd->config_refs, 1);
		FUNC4(&nbd->refs);
		FUNC1(&nbd->config_lock);
		bdev->bd_invalidated = 1;
	} else if (FUNC3(nbd->config)) {
		bdev->bd_invalidated = 1;
	}
out:
	FUNC1(&nbd_index_mutex);
	return ret;
}