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
struct TYPE_5__ {scalar_t__ len; scalar_t__ base; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static h2o_iovec_t FUNC4(h2o_iovec_t session_id, h2o_iovec_t prefix)
{
    h2o_iovec_t key;
    key.base = FUNC2(prefix.len + FUNC0(session_id.len));
    if (prefix.len != 0) {
        FUNC3(key.base, prefix.base, prefix.len);
    }
    key.len = prefix.len;
    key.len += FUNC1(key.base + key.len, session_id.base, session_id.len, 1);
    return key;
}