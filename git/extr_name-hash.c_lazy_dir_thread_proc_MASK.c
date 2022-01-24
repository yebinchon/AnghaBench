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
struct strbuf {int dummy; } ;
struct lazy_dir_thread_data {int /*<<< orphan*/  lazy_entries; int /*<<< orphan*/  k_end; int /*<<< orphan*/  k_start; int /*<<< orphan*/  istate; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 

__attribute__((used)) static void *FUNC2(void *_data)
{
	struct lazy_dir_thread_data *d = _data;
	struct strbuf prefix = STRBUF_INIT;
	FUNC0(d->istate, d->k_start, d->k_end, NULL, &prefix, d->lazy_entries);
	FUNC1(&prefix);
	return NULL;
}