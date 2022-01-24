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
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; int /*<<< orphan*/  sk_state_change; } ;
struct accept_wait_data {int /*<<< orphan*/  original_sk_state_change; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, struct accept_wait_data *ad)
{
	FUNC0(&sk->sk_callback_lock);
	sk->sk_state_change = ad->original_sk_state_change;
	sk->sk_user_data = NULL;
	FUNC1(&sk->sk_callback_lock);
}