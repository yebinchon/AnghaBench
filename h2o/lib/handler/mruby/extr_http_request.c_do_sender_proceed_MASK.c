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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  inflight; } ;
struct TYPE_6__ {int /*<<< orphan*/  final_sent; } ;
struct st_h2o_mruby_http_sender_t {TYPE_4__ sending; TYPE_1__ super; int /*<<< orphan*/ * remaining; int /*<<< orphan*/ * client; } ;
typedef  int /*<<< orphan*/  h2o_req_t ;
struct TYPE_7__ {scalar_t__ sender; } ;
typedef  TYPE_2__ h2o_mruby_generator_t ;
typedef  int /*<<< orphan*/  h2o_generator_t ;
typedef  int /*<<< orphan*/  h2o_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC4(h2o_generator_t *_generator, h2o_req_t *req)
{
    h2o_mruby_generator_t *generator = (void *)_generator;
    struct st_h2o_mruby_http_sender_t *sender = (void *)generator->sender;
    h2o_buffer_t **input;
    int is_final;

    FUNC1(&sender->sending);

    if (sender->client != NULL) {
        input = FUNC3(sender->client, &is_final);
        FUNC0(!is_final);
    } else {
        input = &sender->remaining;
        is_final = 1;
    }

    if (!sender->super.final_sent && !sender->sending.inflight)
        FUNC2(generator, &sender->sending, input, is_final);
}