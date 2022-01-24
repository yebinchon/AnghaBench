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
struct seq_file {scalar_t__ private; } ;

/* Variables and functions */
 unsigned long EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_USER ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *v)
{
	unsigned long	ret;
	unsigned long	id = (unsigned long)m->private;
	char		*page;

	page = (char *)FUNC0(GFP_USER);
	if (!page)
		return -ENOMEM;

	ret = FUNC1(id, page, PAGE_SIZE);

	if ((ret >> 61) == 0) {
		FUNC3(m, page, ret);
		ret = 0;
	} else
		ret = -EFAULT;
	FUNC2((unsigned long)page);
	return ret;
}