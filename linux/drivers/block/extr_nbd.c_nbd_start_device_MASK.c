#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct recv_thread_args {int index; int /*<<< orphan*/  work; struct nbd_device* nbd; } ;
struct TYPE_8__ {scalar_t__ timeout; } ;
struct nbd_device {int /*<<< orphan*/  recv_workq; int /*<<< orphan*/  config_refs; TYPE_4__ tag_set; int /*<<< orphan*/  disk; scalar_t__ task_recv; int /*<<< orphan*/  index; struct nbd_config* config; } ;
struct nbd_config {int num_connections; int flags; int /*<<< orphan*/  recv_threads; TYPE_2__** socks; int /*<<< orphan*/  runtime_flags; } ;
struct TYPE_7__ {scalar_t__ sk_sndtimeo; } ;
struct TYPE_6__ {TYPE_1__* sock; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NBD_FLAG_CAN_MULTI_CONN ; 
 int /*<<< orphan*/  NBD_RT_HAS_PID_FILE ; 
 int WQ_HIGHPRI ; 
 int WQ_MEM_RECLAIM ; 
 int WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct recv_thread_args* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct nbd_device*) ; 
 int /*<<< orphan*/  pid_attr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recv_work ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (struct nbd_device*) ; 

__attribute__((used)) static int FUNC16(struct nbd_device *nbd)
{
	struct nbd_config *config = nbd->config;
	int num_connections = config->num_connections;
	int error = 0, i;

	if (nbd->task_recv)
		return -EBUSY;
	if (!config->socks)
		return -EINVAL;
	if (num_connections > 1 &&
	    !(config->flags & NBD_FLAG_CAN_MULTI_CONN)) {
		FUNC4(FUNC6(nbd->disk), "server does not support multiple connections per device.\n");
		return -EINVAL;
	}

	nbd->recv_workq = FUNC1("knbd%d-recv",
					  WQ_MEM_RECLAIM | WQ_HIGHPRI |
					  WQ_UNBOUND, 0, nbd->index);
	if (!nbd->recv_workq) {
		FUNC4(FUNC6(nbd->disk), "Could not allocate knbd recv work queue.\n");
		return -ENOMEM;
	}

	FUNC3(&nbd->tag_set, config->num_connections);
	nbd->task_recv = current;

	FUNC9(nbd);

	error = FUNC5(FUNC6(nbd->disk), &pid_attr);
	if (error) {
		FUNC4(FUNC6(nbd->disk), "device_create_file failed!\n");
		return error;
	}
	FUNC13(NBD_RT_HAS_PID_FILE, &config->runtime_flags);

	FUNC8(nbd);
	for (i = 0; i < num_connections; i++) {
		struct recv_thread_args *args;

		args = FUNC7(sizeof(*args), GFP_KERNEL);
		if (!args) {
			FUNC15(nbd);
			return -ENOMEM;
		}
		FUNC14(config->socks[i]->sock->sk);
		if (nbd->tag_set.timeout)
			config->socks[i]->sock->sk->sk_sndtimeo =
				nbd->tag_set.timeout;
		FUNC2(&config->recv_threads);
		FUNC12(&nbd->config_refs);
		FUNC0(&args->work, recv_work);
		args->nbd = nbd;
		args->index = i;
		FUNC11(nbd->recv_workq, &args->work);
	}
	FUNC10(nbd);
	return error;
}