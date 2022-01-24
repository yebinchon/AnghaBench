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
typedef  int /*<<< orphan*/  umode_t ;
struct device {TYPE_2__* class; TYPE_1__* type; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_4__ {char* (* devnode ) (struct device*,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {char* (* devnode ) (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char const* FUNC0 (struct device*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,char) ; 
 char* FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (struct device*,int /*<<< orphan*/ *) ; 

const char *FUNC6(struct device *dev,
			       umode_t *mode, kuid_t *uid, kgid_t *gid,
			       const char **tmp)
{
	char *s;

	*tmp = NULL;

	/* the device type may provide a specific name */
	if (dev->type && dev->type->devnode)
		*tmp = dev->type->devnode(dev, mode, uid, gid);
	if (*tmp)
		return *tmp;

	/* the class may provide a specific name */
	if (dev->class && dev->class->devnode)
		*tmp = dev->class->devnode(dev, mode);
	if (*tmp)
		return *tmp;

	/* return name without allocation, tmp == NULL */
	if (FUNC2(FUNC0(dev), '!') == NULL)
		return FUNC0(dev);

	/* replace '!' in the name with '/' */
	s = FUNC1(FUNC0(dev), GFP_KERNEL);
	if (!s)
		return NULL;
	FUNC3(s, '!', '/');
	return *tmp = s;
}