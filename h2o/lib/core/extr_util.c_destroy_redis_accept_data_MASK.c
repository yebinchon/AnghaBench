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
struct st_h2o_redis_resumption_accept_data_t {int /*<<< orphan*/  super; int /*<<< orphan*/ * get_command; } ;
struct st_h2o_accept_data_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct st_h2o_accept_data_t *_accept_data)
{
    struct st_h2o_redis_resumption_accept_data_t *accept_data = (struct st_h2o_redis_resumption_accept_data_t *)_accept_data;
    FUNC0(accept_data->get_command == NULL);
    FUNC1(&accept_data->super);
}