#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ptls_iovec_t ;
struct TYPE_5__ {int /*<<< orphan*/  off; int /*<<< orphan*/ * base; int /*<<< orphan*/  is_allocated; } ;
typedef  TYPE_1__ ptls_buffer_t ;
typedef  int /*<<< orphan*/  ptls_base64_decode_state_t ;
typedef  int /*<<< orphan*/  ns_rr ;
typedef  int /*<<< orphan*/  ns_msg ;
typedef  int /*<<< orphan*/  esni_name ;
typedef  int /*<<< orphan*/  answer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_c_in ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_s_an ; 
 int /*<<< orphan*/  ns_t_txt ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (char*,int,char*,char const*) ; 

__attribute__((used)) static inline ptls_iovec_t FUNC14(const char *server_name)
{
    char esni_name[256], *base64;
    uint8_t answer[1024];
    ns_msg msg;
    ns_rr rr;
    ptls_buffer_t decode_buf;
    ptls_base64_decode_state_t ds;
    int answer_len;

    FUNC10(&decode_buf, "", 0);

    if (FUNC13(esni_name, sizeof(esni_name), "_esni.%s", server_name) > sizeof(esni_name) - 1)
        goto Error;
    if ((answer_len = FUNC12(esni_name, ns_c_in, ns_t_txt, answer, sizeof(answer))) <= 0)
        goto Error;
    if (FUNC2(answer, answer_len, &msg) != 0)
        goto Error;
    if (FUNC3(msg, ns_s_an) < 1)
        goto Error;
    if (FUNC4(&msg, ns_s_an, 0, &rr) != 0)
        goto Error;
    base64 = (void *)FUNC5(rr);
    if (!FUNC1((void *)base64, FUNC6(rr)))
        goto Error;

    FUNC8(&ds);
    if (FUNC7(base64, &ds, &decode_buf) != 0)
        goto Error;
    FUNC0(decode_buf.is_allocated);

    return FUNC11(decode_buf.base, decode_buf.off);
Error:
    FUNC9(&decode_buf);
    return FUNC11(NULL, 0);
}