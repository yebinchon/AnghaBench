#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  h2o_token_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_7__ {TYPE_1__* entries; } ;
typedef  TYPE_2__ h2o_headers_t ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,char const*,size_t) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t) ; 

ssize_t FUNC3(h2o_mem_pool_t *pool, h2o_headers_t *headers, const h2o_token_t *token, const char *value, size_t value_len,
                       int overwrite_if_exists)
{
    ssize_t cursor = FUNC1(headers, token, -1);
    if (cursor != -1) {
        if (overwrite_if_exists) {
            headers->entries[cursor].value = FUNC2(value, value_len);
        }
        return cursor;
    } else {
        return FUNC0(pool, headers, token, NULL, value, value_len);
    }
}