#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_9__ {int size; TYPE_2__* entries; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_3__ h2o_headers_t ;
struct TYPE_10__ {int /*<<< orphan*/  buf; } ;
struct TYPE_7__ {char* base; int /*<<< orphan*/  len; } ;
struct TYPE_8__ {TYPE_1__ value; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_5__* H2O_TOKEN_VARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
    h2o_mem_pool_t pool;
    h2o_headers_t headers = {NULL};

    FUNC2(&pool);

    FUNC4(&pool, &headers, H2O_TOKEN_VARY, FUNC0("cookie"));
    FUNC5(headers.size == 1);
    FUNC5(headers.entries[0].name == &H2O_TOKEN_VARY->buf);
    FUNC5(FUNC3(headers.entries[0].value.base, headers.entries[0].value.len, FUNC0("cookie")));
    FUNC4(&pool, &headers, H2O_TOKEN_VARY, FUNC0("accept-encoding"));
    FUNC5(headers.size == 1);
    FUNC5(headers.entries[0].name == &H2O_TOKEN_VARY->buf);
    FUNC5(FUNC3(headers.entries[0].value.base, headers.entries[0].value.len, FUNC0("cookie, accept-encoding")));

    headers.entries[0].value.base[0] = 'C';
    FUNC4(&pool, &headers, H2O_TOKEN_VARY, FUNC0("cookie"));
    FUNC5(headers.size == 1);
    FUNC5(headers.entries[0].name == &H2O_TOKEN_VARY->buf);
    FUNC5(FUNC3(headers.entries[0].value.base, headers.entries[0].value.len, FUNC0("Cookie, accept-encoding")));

    FUNC1(&pool);
}