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
struct file {int f_mode; } ;
struct charlcd_priv {int must_clear; int /*<<< orphan*/  lcd; } ;

/* Variables and functions */
 int EBUSY ; 
 int EPERM ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  charlcd_available ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct charlcd_priv* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  the_charlcd ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct charlcd_priv *priv = FUNC3(the_charlcd);
	int ret;

	ret = -EBUSY;
	if (!FUNC0(&charlcd_available))
		goto fail;	/* open only once at a time */

	ret = -EPERM;
	if (file->f_mode & FMODE_READ)	/* device is write-only */
		goto fail;

	if (priv->must_clear) {
		FUNC2(&priv->lcd);
		priv->must_clear = false;
	}
	return FUNC4(inode, file);

 fail:
	FUNC1(&charlcd_available);
	return ret;
}