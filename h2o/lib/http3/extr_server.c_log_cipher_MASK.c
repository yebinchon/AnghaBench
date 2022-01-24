#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  quic; } ;
struct st_h2o_http3_server_conn_t {TYPE_1__ h3; } ;
typedef  int /*<<< orphan*/  ptls_t ;
struct TYPE_9__ {TYPE_2__* aead; } ;
typedef  TYPE_3__ ptls_cipher_suite_t ;
struct TYPE_10__ {scalar_t__ conn; } ;
typedef  TYPE_4__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_iovec_t ;
struct TYPE_8__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static h2o_iovec_t FUNC4(h2o_req_t *req)
{
    struct st_h2o_http3_server_conn_t *conn = (struct st_h2o_http3_server_conn_t *)req->conn;
    ptls_t *tls = FUNC2(conn->h3.quic);
    ptls_cipher_suite_t *cipher = FUNC1(tls);
    return cipher != NULL ? FUNC0(cipher->aead->name, FUNC3(cipher->aead->name)) : FUNC0(NULL, 0);
}