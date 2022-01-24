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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;

/* Variables and functions */
 int ADD_CACHE_OK_TO_ADD ; 
 int ADD_CACHE_SKIP_DFCHECK ; 
 int FUNC0 (struct index_state*,struct object_id const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,unsigned int,int,int) ; 

__attribute__((used)) static int FUNC1(const struct object_id *oid, struct strbuf *base,
			  const char *pathname, unsigned mode, int stage,
			  void *context)
{
	struct index_state *istate = context;
	return FUNC0(istate, oid, base->buf, base->len, pathname,
				  mode, stage,
				  ADD_CACHE_OK_TO_ADD|ADD_CACHE_SKIP_DFCHECK);
}