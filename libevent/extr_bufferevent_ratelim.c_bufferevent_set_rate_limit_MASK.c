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
struct timeval {int dummy; } ;
struct ev_token_bucket_cfg {int /*<<< orphan*/  tick_timeout; } ;
struct TYPE_2__ {scalar_t__ read_limit; scalar_t__ write_limit; } ;
struct bufferevent_rate_limit {int /*<<< orphan*/  refill_bucket_event; TYPE_1__ limit; struct ev_token_bucket_cfg* cfg; } ;
struct bufferevent_private {struct bufferevent_rate_limit* rate_limiting; } ;
struct bufferevent {int /*<<< orphan*/  ev_base; } ;
typedef  int /*<<< orphan*/  ev_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  BEV_SUSPEND_BW ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  EV_FINALIZE ; 
 int /*<<< orphan*/  bev_refill_callback_ ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,struct ev_token_bucket_cfg*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct ev_token_bucket_cfg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 struct bufferevent_rate_limit* FUNC15 (int,int) ; 

int
FUNC16(struct bufferevent *bev,
    struct ev_token_bucket_cfg *cfg)
{
	struct bufferevent_private *bevp = FUNC2(bev);
	int r = -1;
	struct bufferevent_rate_limit *rlim;
	struct timeval now;
	ev_uint32_t tick;
	int reinit = 0, suspended = 0;
	/* XXX reference-count cfg */

	FUNC0(bev);

	if (cfg == NULL) {
		if (bevp->rate_limiting) {
			rlim = bevp->rate_limiting;
			rlim->cfg = NULL;
			FUNC6(bev, BEV_SUSPEND_BW);
			FUNC7(bev, BEV_SUSPEND_BW);
			if (FUNC14(&rlim->refill_bucket_event))
				FUNC13(&rlim->refill_bucket_event);
		}
		r = 0;
		goto done;
	}

	FUNC12(bev->ev_base, &now);
	tick = FUNC8(&now, cfg);

	if (bevp->rate_limiting && bevp->rate_limiting->cfg == cfg) {
		/* no-op */
		r = 0;
		goto done;
	}
	if (bevp->rate_limiting == NULL) {
		rlim = FUNC15(1, sizeof(struct bufferevent_rate_limit));
		if (!rlim)
			goto done;
		bevp->rate_limiting = rlim;
	} else {
		rlim = bevp->rate_limiting;
	}
	reinit = rlim->cfg != NULL;

	rlim->cfg = cfg;
	FUNC9(&rlim->limit, cfg, tick, reinit);

	if (reinit) {
		FUNC3(FUNC14(&rlim->refill_bucket_event));
		FUNC13(&rlim->refill_bucket_event);
	}
	FUNC11(&rlim->refill_bucket_event, bev->ev_base,
	    -1, EV_FINALIZE, bev_refill_callback_, bevp);

	if (rlim->limit.read_limit > 0) {
		FUNC6(bev, BEV_SUSPEND_BW);
	} else {
		FUNC4(bev, BEV_SUSPEND_BW);
		suspended=1;
	}
	if (rlim->limit.write_limit > 0) {
		FUNC7(bev, BEV_SUSPEND_BW);
	} else {
		FUNC5(bev, BEV_SUSPEND_BW);
		suspended = 1;
	}

	if (suspended)
		FUNC10(&rlim->refill_bucket_event, &cfg->tick_timeout);

	r = 0;

done:
	FUNC1(bev);
	return r;
}