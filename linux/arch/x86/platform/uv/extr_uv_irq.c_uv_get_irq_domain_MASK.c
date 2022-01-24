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
struct irq_domain {int /*<<< orphan*/  parent; } ;
struct fwnode_handle {int dummy; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 struct fwnode_handle* FUNC0 (char*) ; 
 struct irq_domain* FUNC1 (struct fwnode_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uv_domain_ops ; 
 int /*<<< orphan*/  x86_vector_domain ; 

__attribute__((used)) static struct irq_domain *FUNC5(void)
{
	static struct irq_domain *uv_domain;
	static DEFINE_MUTEX(uv_lock);
	struct fwnode_handle *fn;

	FUNC3(&uv_lock);
	if (uv_domain)
		goto out;

	fn = FUNC0("UV-CORE");
	if (!fn)
		goto out;

	uv_domain = FUNC1(fn, &uv_domain_ops, NULL);
	FUNC2(fn);
	if (uv_domain)
		uv_domain->parent = x86_vector_domain;
out:
	FUNC4(&uv_lock);

	return uv_domain;
}