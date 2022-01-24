#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; char* base; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 char const FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int FUNC2(const h2o_iovec_t *env, const h2o_iovec_t *header)
{
    const char *ep, *hp, *hend;

    if (env->len != 5 + header->len)
        return 0;
    if (FUNC1(env->base, "HTTP_", 5) != 0)
        return 0;
    for (ep = env->base + 5, hp = header->base, hend = hp + header->len; hp < hend; ++ep, ++hp)
        if (*ep != FUNC0(*hp))
            return 0;
    return 1;
}