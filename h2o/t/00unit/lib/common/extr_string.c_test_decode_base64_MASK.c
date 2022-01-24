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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_3__ {char* base; scalar_t__ len; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,scalar_t__,int) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    h2o_mem_pool_t pool;
    char buf[256];

    FUNC4(&pool);

    h2o_iovec_t src = {FUNC0("The quick brown fox jumps over the lazy dog.")}, decoded;
    FUNC1(buf, (const uint8_t *)src.base, src.len, 1);
    FUNC5(FUNC6(buf, "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wcyBvdmVyIHRoZSBsYXp5IGRvZy4") == 0);
    decoded = FUNC2(&pool, buf, FUNC7(buf));
    FUNC5(src.len == decoded.len);
    FUNC5(FUNC6(decoded.base, src.base) == 0);

    FUNC3(&pool);
}