#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  inflight; } ;
struct TYPE_11__ {scalar_t__ bytes_left; int /*<<< orphan*/  final_sent; } ;
struct st_h2o_mruby_http_sender_t {TYPE_8__ sending; TYPE_1__ super; TYPE_5__* client; TYPE_3__* remaining; } ;
struct TYPE_12__ {scalar_t__ sender; } ;
typedef  TYPE_2__ h2o_mruby_generator_t ;
struct TYPE_13__ {scalar_t__ size; } ;
typedef  TYPE_3__ h2o_buffer_t ;
struct TYPE_14__ {TYPE_2__* shortcut; } ;

/* Variables and functions */
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_8__*,TYPE_3__**,int) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 TYPE_3__** FUNC3 (TYPE_5__*,int*) ; 

__attribute__((used)) static void FUNC4(h2o_mruby_generator_t *generator)
{
    struct st_h2o_mruby_http_sender_t *sender = (void *)generator->sender;
    FUNC0(sender->client->shortcut == generator);

    int is_final;
    h2o_buffer_t **input = FUNC3(sender->client, &is_final);

    if (sender->super.bytes_left != SIZE_MAX && sender->super.bytes_left < (*input)->size)
        (*input)->size = sender->super.bytes_left; /* trim data too long */

    /* if final, steal socket input buffer to shortcut.remaining, and reset pointer to client */
    if (is_final) {
        sender->remaining = *input;
        FUNC1(input, &h2o_socket_buffer_prototype);
        input = &sender->remaining;
        sender->client->shortcut = NULL;
        sender->client = NULL;
    }

    if (!sender->super.final_sent && !sender->sending.inflight)
        FUNC2(generator, &sender->sending, input, is_final);
}