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
struct evrpc_meta_list {int dummy; } ;
struct evrpc_meta {struct evrpc_meta* data; struct evrpc_meta* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct evrpc_meta* FUNC1 (struct evrpc_meta_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct evrpc_meta_list*,struct evrpc_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evrpc_meta*) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC4(struct evrpc_meta_list *meta_data)
{
	struct evrpc_meta *entry;
	FUNC0(meta_data != NULL);

	while ((entry = FUNC1(meta_data)) != NULL) {
		FUNC2(meta_data, entry, next);
		FUNC3(entry->key);
		FUNC3(entry->data);
		FUNC3(entry);
	}
}