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
struct device_node {struct cbe_regs_map* data; struct device_node* parent; } ;
struct cbe_regs_map {struct device_node* be_node; struct device_node* cpu_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int cbe_regs_map_count ; 
 struct cbe_regs_map* cbe_regs_maps ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*) ; 

__attribute__((used)) static struct cbe_regs_map *FUNC2(struct device_node *np)
{
	int i;
	struct device_node *tmp_np;

	if (!FUNC1(np, "spe")) {
		for (i = 0; i < cbe_regs_map_count; i++)
			if (cbe_regs_maps[i].cpu_node == np ||
			    cbe_regs_maps[i].be_node == np)
				return &cbe_regs_maps[i];
		return NULL;
	}

	if (np->data)
		return np->data;

	/* walk up path until cpu or be node was found */
	tmp_np = np;
	do {
		tmp_np = tmp_np->parent;
		/* on a correct devicetree we wont get up to root */
		FUNC0(!tmp_np);
	} while (!FUNC1(tmp_np, "cpu") ||
		 !FUNC1(tmp_np, "be"));

	np->data = FUNC2(tmp_np);

	return np->data;
}