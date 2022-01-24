#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {void* private_data; } ;
struct agp_file_private {int /*<<< orphan*/  access_flags; int /*<<< orphan*/  my_pid; } ;
struct agp_client {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  agp_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int AGPGART_MINOR ; 
 int /*<<< orphan*/  AGP_FF_ALLOW_CLIENT ; 
 int /*<<< orphan*/  AGP_FF_ALLOW_CONTROLLER ; 
 int /*<<< orphan*/  AGP_FF_IS_CLIENT ; 
 int /*<<< orphan*/  AGP_FF_IS_VALID ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int /*<<< orphan*/  FUNC0 (char*,struct agp_file_private*,struct agp_client*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__ agp_fe ; 
 struct agp_client* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct agp_file_private*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int FUNC4 (struct inode*) ; 
 struct agp_file_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	int minor = FUNC4(inode);
	struct agp_file_private *priv;
	struct agp_client *client;

	if (minor != AGPGART_MINOR)
		return -ENXIO;

	FUNC6(&(agp_fe.agp_mutex));

	priv = FUNC5(sizeof(struct agp_file_private), GFP_KERNEL);
	if (priv == NULL) {
		FUNC7(&(agp_fe.agp_mutex));
		return -ENOMEM;
	}

	FUNC8(AGP_FF_ALLOW_CLIENT, &priv->access_flags);
	priv->my_pid = current->pid;

	if (FUNC3(CAP_SYS_RAWIO))
		/* Root priv, can be controller */
		FUNC8(AGP_FF_ALLOW_CONTROLLER, &priv->access_flags);

	client = FUNC1(current->pid);

	if (client != NULL) {
		FUNC8(AGP_FF_IS_CLIENT, &priv->access_flags);
		FUNC8(AGP_FF_IS_VALID, &priv->access_flags);
	}
	file->private_data = (void *) priv;
	FUNC2(priv);
	FUNC0("private=%p, client=%p", priv, client);

	FUNC7(&(agp_fe.agp_mutex));

	return 0;
}