#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  len; TYPE_1__* callbacks; } ;
typedef  TYPE_2__ h2o_sendvec_t ;
typedef  int /*<<< orphan*/  h2o_send_state_t ;
typedef  int /*<<< orphan*/  h2o_req_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* do_transform ) (TYPE_3__*,TYPE_2__*,size_t,int /*<<< orphan*/ ,TYPE_2__**,size_t*) ;int /*<<< orphan*/ * push_buf; } ;
typedef  TYPE_3__ h2o_compress_context_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* flatten ) (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_PULL_SENDVEC_MAX_SIZE ; 
 int /*<<< orphan*/  H2O_SEND_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,size_t,int /*<<< orphan*/ ,TYPE_2__**,size_t*) ; 

h2o_send_state_t FUNC8(h2o_compress_context_t *self, h2o_req_t *req, h2o_sendvec_t *inbufs, size_t inbufcnt,
                                        h2o_send_state_t state, h2o_sendvec_t **outbufs, size_t *outbufcnt)
{
    h2o_sendvec_t flattened;

    if (inbufcnt != 0 && inbufs->callbacks->flatten != &h2o_sendvec_flatten_raw) {
        FUNC0(inbufcnt == 1);
        FUNC0(inbufs->len <= H2O_PULL_SENDVEC_MAX_SIZE);
        if (self->push_buf == NULL)
            self->push_buf = FUNC2(FUNC3(state) ? H2O_PULL_SENDVEC_MAX_SIZE : inbufs->len);
        if (!(*inbufs->callbacks->flatten)(inbufs, req, FUNC1(self->push_buf, inbufs->len), 0)) {
            *outbufs = NULL;
            *outbufcnt = 0;
            return H2O_SEND_STATE_ERROR;
        }
        FUNC5(&flattened, self->push_buf, inbufs->len);
        inbufs = &flattened;
    }

    return self->do_transform(self, inbufs, inbufcnt, state, outbufs, outbufcnt);
}