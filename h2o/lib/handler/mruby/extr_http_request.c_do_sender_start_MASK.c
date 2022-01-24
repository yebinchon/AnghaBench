#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  inflight; } ;
struct TYPE_7__ {int /*<<< orphan*/  final_sent; } ;
struct st_h2o_mruby_http_sender_t {TYPE_5__ sending; TYPE_1__ super; } ;
struct TYPE_8__ {scalar_t__ sender; } ;
typedef  TYPE_2__ h2o_mruby_generator_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SEND_STATE_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(h2o_mruby_generator_t *generator)
{
    struct st_h2o_mruby_http_sender_t *sender = (void *)generator->sender;

    FUNC2(generator);

    if (!sender->super.final_sent && !sender->sending.inflight) {
        FUNC0(&sender->sending);
        FUNC1(generator, NULL, 0, H2O_SEND_STATE_IN_PROGRESS);
    }
}