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
struct nbd_sock {int dead; scalar_t__ sent; int /*<<< orphan*/ * pending; int /*<<< orphan*/  sock; } ;
struct nbd_device {TYPE_1__* config; int /*<<< orphan*/  index; } ;
struct link_dead_args {int /*<<< orphan*/  work; int /*<<< orphan*/  index; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; int /*<<< orphan*/  live_connections; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBD_RT_DISCONNECTED ; 
 int /*<<< orphan*/  NBD_RT_DISCONNECT_REQUESTED ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct link_dead_args* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nbd_dead_link_work ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct nbd_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_wq ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct nbd_device *nbd, struct nbd_sock *nsock,
				int notify)
{
	if (!nsock->dead && notify && !FUNC5(nbd->config)) {
		struct link_dead_args *args;
		args = FUNC4(sizeof(struct link_dead_args), GFP_NOIO);
		if (args) {
			FUNC0(&args->work, nbd_dead_link_work);
			args->index = nbd->index;
			FUNC7(system_wq, &args->work);
		}
	}
	if (!nsock->dead) {
		FUNC3(nsock->sock, SHUT_RDWR);
		if (FUNC1(&nbd->config->live_connections) == 0) {
			if (FUNC9(NBD_RT_DISCONNECT_REQUESTED,
					       &nbd->config->runtime_flags)) {
				FUNC8(NBD_RT_DISCONNECTED,
					&nbd->config->runtime_flags);
				FUNC2(FUNC6(nbd),
					"Disconnected due to user request.\n");
			}
		}
	}
	nsock->dead = true;
	nsock->pending = NULL;
	nsock->sent = 0;
}