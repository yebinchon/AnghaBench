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
struct evrpc_base {int dummy; } ;
struct evrpc {int dummy; } ;

/* Variables and functions */
 struct evrpc* FUNC0 (char const*,void* (*) (void*),void*,void (*) (void*),int (*) (void*,struct evbuffer*),void* (*) (void*),void*,void (*) (void*),int (*) (void*),void (*) (struct evbuffer*,void*)) ; 
 int /*<<< orphan*/  FUNC1 (struct evrpc_base*,struct evrpc*,void (*) (struct evrpc_req_generic*,void*),void*) ; 

int
FUNC2(struct evrpc_base *base, const char *name,
    void (*callback)(struct evrpc_req_generic *, void *), void *cbarg,
    void *(*req_new)(void *), void *req_new_arg, void (*req_free)(void *),
    int (*req_unmarshal)(void *, struct evbuffer *),
    void *(*rpl_new)(void *), void *rpl_new_arg, void (*rpl_free)(void *),
    int (*rpl_complete)(void *),
    void (*rpl_marshal)(struct evbuffer *, void *))
{
	struct evrpc* rpc =
	    FUNC0(name, req_new, req_new_arg, req_free, req_unmarshal,
		rpl_new, rpl_new_arg, rpl_free, rpl_complete, rpl_marshal);
	if (rpc == NULL)
		return (-1);
	FUNC1(base, rpc,
	    (void (*)(struct evrpc_req_generic*, void *))callback, cbarg);
	return (0);
}