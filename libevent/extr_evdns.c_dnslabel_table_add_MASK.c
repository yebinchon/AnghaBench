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
struct dnslabel_table {scalar_t__ n_labels; TYPE_1__* labels; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {char* v; int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 scalar_t__ MAX_LABELS ; 
 char* FUNC0 (char const*) ; 

__attribute__((used)) static int
FUNC1(struct dnslabel_table *table, const char *label, off_t pos)
{
	char *v;
	int p;
	if (table->n_labels == MAX_LABELS)
		return (-1);
	v = FUNC0(label);
	if (v == NULL)
		return (-1);
	p = table->n_labels++;
	table->labels[p].v = v;
	table->labels[p].pos = pos;

	return (0);
}