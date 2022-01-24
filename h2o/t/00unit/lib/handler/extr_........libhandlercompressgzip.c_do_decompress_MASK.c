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
typedef  int /*<<< orphan*/  processor ;
typedef  int /*<<< orphan*/  h2o_sendvec_t ;
typedef  int /*<<< orphan*/  h2o_send_state_t ;
typedef  int /*<<< orphan*/  h2o_compress_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ inflate ; 

__attribute__((used)) static h2o_send_state_t FUNC1(h2o_compress_context_t *_self, h2o_sendvec_t *inbufs, size_t inbufcnt, h2o_send_state_t state,
                                      h2o_sendvec_t **outbufs, size_t *outbufcnt)
{
    return FUNC0(_self, inbufs, inbufcnt, state, outbufs, outbufcnt, (processor)inflate);
}