#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  inflight; } ;
struct TYPE_10__ {scalar_t__ bytes_left; int /*<<< orphan*/  final_sent; } ;
struct st_h2o_mruby_callback_sender_t {TYPE_5__* receiving; TYPE_4__ sending; TYPE_1__ super; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
struct TYPE_11__ {scalar_t__ sender; } ;
typedef  TYPE_2__ h2o_mruby_generator_t ;
struct TYPE_14__ {int /*<<< orphan*/ * base; } ;
struct TYPE_13__ {scalar_t__ bytes; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_7__ FUNC1 (TYPE_5__**,scalar_t__) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*,TYPE_5__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const**,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static mrb_value FUNC10(mrb_state *mrb, mrb_value self)
{
    const char *s;
    mrb_int len;
    mrb_value gen;

    /* parse args */
    FUNC7(mrb, "so", &s, &len, &gen);

    h2o_mruby_generator_t *generator = FUNC2(mrb, gen);

    { /* precond check */
        mrb_value exc = FUNC0(mrb, generator);
        if (!FUNC8(exc))
            FUNC6(mrb, exc);
    }

    /* append to send buffer, and send out immediately if necessary */
    if (len != 0) {
        struct st_h2o_mruby_callback_sender_t *sender = (void *)generator->sender;
        if (sender->super.bytes_left != SIZE_MAX && sender->super.bytes_left < len)
            len = sender->super.bytes_left; /* trim data too long */
        if (len != 0) {
            if ((FUNC1(&sender->receiving, len)).base == NULL) {
                mrb_value exc = FUNC5(mrb, E_RUNTIME_ERROR, "failed to allocate memory");
                FUNC6(mrb, exc);
            }
            FUNC4(sender->receiving->bytes + sender->receiving->size, s, len);
            sender->receiving->size += len;
            if (!sender->super.final_sent && !sender->sending.inflight)
                FUNC3(generator, &sender->sending, &sender->receiving, 0);
        }
    }

    return FUNC9();
}