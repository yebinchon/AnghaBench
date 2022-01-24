#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sched_param {int sched_priority; } ;
struct device {int dummy; } ;
struct crypto_engine {int rt; int running; int busy; int idling; int cur_req_prepared; TYPE_1__* kworker; int /*<<< orphan*/  pump_requests; int /*<<< orphan*/  name; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; struct device* priv_data; struct device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ENGINE_MAX_QLEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int MAX_RT_PRIO ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypto_pump_work ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 char* FUNC4 (struct device*) ; 
 struct crypto_engine* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct crypto_engine *FUNC11(struct device *dev, bool rt)
{
	struct sched_param param = { .sched_priority = MAX_RT_PRIO / 2 };
	struct crypto_engine *engine;

	if (!dev)
		return NULL;

	engine = FUNC5(dev, sizeof(*engine), GFP_KERNEL);
	if (!engine)
		return NULL;

	engine->dev = dev;
	engine->rt = rt;
	engine->running = false;
	engine->busy = false;
	engine->idling = false;
	engine->cur_req_prepared = false;
	engine->priv_data = dev;
	FUNC9(engine->name, sizeof(engine->name),
		 "%s-engine", FUNC4(dev));

	FUNC1(&engine->queue, CRYPTO_ENGINE_MAX_QLEN);
	FUNC10(&engine->queue_lock);

	engine->kworker = FUNC6(0, "%s", engine->name);
	if (FUNC0(engine->kworker)) {
		FUNC2(dev, "failed to create crypto request pump task\n");
		return NULL;
	}
	FUNC7(&engine->pump_requests, crypto_pump_work);

	if (engine->rt) {
		FUNC3(dev, "will run requests pump with realtime priority\n");
		FUNC8(engine->kworker->task, SCHED_FIFO, &param);
	}

	return engine;
}