#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_http3client_req_t {int dummy; } ;
struct TYPE_3__ {struct st_h2o_http3client_req_t* data; } ;
typedef  TYPE_1__ quicly_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP3_ERROR_TRANSPORT ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http3client_req_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http3client_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_h2o_http3client_req_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(quicly_stream_t *qs, int err)
{
    struct st_h2o_http3client_req_t *req;

    if ((req = qs->data) == NULL)
        return;
    FUNC2(req, H2O_HTTP3_ERROR_TRANSPORT);
    FUNC1(req);
    FUNC0(req);
}