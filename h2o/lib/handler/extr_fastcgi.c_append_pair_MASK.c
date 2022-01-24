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
typedef  int /*<<< orphan*/  iovec_vector_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t) ; 
 char* FUNC1 (char*,size_t) ; 

__attribute__((used)) static void *FUNC2(h2o_mem_pool_t *pool, iovec_vector_t *blocks, const char *name, size_t namelen, const char *value,
                         size_t valuelen)
{
    char lenbuf[8];
    void *name_buf;

    FUNC0(pool, blocks, lenbuf, FUNC1(FUNC1(lenbuf, namelen), valuelen) - lenbuf);
    name_buf = FUNC0(pool, blocks, name, namelen);
    if (valuelen != 0)
        FUNC0(pool, blocks, value, valuelen);

    return name_buf;
}