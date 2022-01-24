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
struct ref_store {int dummy; } ;
struct ref_cache {int /*<<< orphan*/  root; int /*<<< orphan*/ * fill_ref_dir; struct ref_store* ref_store; } ;
typedef  int /*<<< orphan*/  fill_ref_dir_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_cache*,char*,int /*<<< orphan*/ ,int) ; 
 struct ref_cache* FUNC1 (int,int) ; 

struct ref_cache *FUNC2(struct ref_store *refs,
				   fill_ref_dir_fn *fill_ref_dir)
{
	struct ref_cache *ret = FUNC1(1, sizeof(*ret));

	ret->ref_store = refs;
	ret->fill_ref_dir = fill_ref_dir;
	ret->root = FUNC0(ret, "", 0, 1);
	return ret;
}