#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  from; } ;
typedef  TYPE_3__ substring_t ;
struct parse_rbd_opts_ctx {TYPE_2__* opts; TYPE_1__* spec; } ;
struct TYPE_8__ {int queue_depth; int alloc_size; int read_only; int lock_on_read; int exclusive; int trim; int /*<<< orphan*/  lock_timeout; } ;
struct TYPE_7__ {int /*<<< orphan*/  pool_ns; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int INT_MAX ; 
 int MAX_OPT_ARGS ; 
#define  Opt_alloc_size 136 
#define  Opt_exclusive 135 
 int Opt_last_int ; 
 int Opt_last_string ; 
#define  Opt_lock_on_read 134 
#define  Opt_lock_timeout 133 
#define  Opt_notrim 132 
#define  Opt_pool_ns 131 
#define  Opt_queue_depth 130 
#define  Opt_read_only 129 
#define  Opt_read_write 128 
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  rbd_opts_tokens ; 

__attribute__((used)) static int FUNC8(char *c, void *private)
{
	struct parse_rbd_opts_ctx *pctx = private;
	substring_t argstr[MAX_OPT_ARGS];
	int token, intval, ret;

	token = FUNC5(c, rbd_opts_tokens, argstr);
	if (token < Opt_last_int) {
		ret = FUNC3(&argstr[0], &intval);
		if (ret < 0) {
			FUNC7("bad option arg (not int) at '%s'\n", c);
			return ret;
		}
		FUNC0("got int token %d val %d\n", token, intval);
	} else if (token > Opt_last_int && token < Opt_last_string) {
		FUNC0("got string token %d val %s\n", token, argstr[0].from);
	} else {
		FUNC0("got token %d\n", token);
	}

	switch (token) {
	case Opt_queue_depth:
		if (intval < 1) {
			FUNC7("queue_depth out of range\n");
			return -EINVAL;
		}
		pctx->opts->queue_depth = intval;
		break;
	case Opt_alloc_size:
		if (intval < SECTOR_SIZE) {
			FUNC7("alloc_size out of range\n");
			return -EINVAL;
		}
		if (!FUNC1(intval)) {
			FUNC7("alloc_size must be a power of 2\n");
			return -EINVAL;
		}
		pctx->opts->alloc_size = intval;
		break;
	case Opt_lock_timeout:
		/* 0 is "wait forever" (i.e. infinite timeout) */
		if (intval < 0 || intval > INT_MAX / 1000) {
			FUNC7("lock_timeout out of range\n");
			return -EINVAL;
		}
		pctx->opts->lock_timeout = FUNC6(intval * 1000);
		break;
	case Opt_pool_ns:
		FUNC2(pctx->spec->pool_ns);
		pctx->spec->pool_ns = FUNC4(argstr);
		if (!pctx->spec->pool_ns)
			return -ENOMEM;
		break;
	case Opt_read_only:
		pctx->opts->read_only = true;
		break;
	case Opt_read_write:
		pctx->opts->read_only = false;
		break;
	case Opt_lock_on_read:
		pctx->opts->lock_on_read = true;
		break;
	case Opt_exclusive:
		pctx->opts->exclusive = true;
		break;
	case Opt_notrim:
		pctx->opts->trim = false;
		break;
	default:
		/* libceph prints "bad option" msg */
		return -EINVAL;
	}

	return 0;
}