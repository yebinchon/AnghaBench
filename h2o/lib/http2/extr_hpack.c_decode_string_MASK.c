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
typedef  int uint8_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_4__ {size_t len; char* base; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC1 (char*,int const*,int,int,char const**) ; 
 int FUNC2 (int const**,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int const*,int) ; 

__attribute__((used)) static h2o_iovec_t *FUNC6(h2o_mem_pool_t *pool, const uint8_t **src, const uint8_t *src_end, int is_header_name,
                                  const char **err_desc)
{
    h2o_iovec_t *ret;
    int is_huffman;
    int64_t len;

    if (*src >= src_end)
        return NULL;

    is_huffman = (**src & 0x80) != 0;
    if ((len = FUNC2(src, src_end, 7)) < 0)
        return NULL;

    if (is_huffman) {
        if (len > src_end - *src)
            return NULL;
        ret = FUNC0(pool, len * 2); /* max compression ratio is >= 0.5 */
        if ((ret->len = FUNC1(ret->base, *src, len, is_header_name, err_desc)) == SIZE_MAX)
            return NULL;
        ret->base[ret->len] = '\0';
    } else {
        if (len > src_end - *src)
            return NULL;
        if (is_header_name) {
            /* pseudo-headers are checked later in `decode_header` */
            if (**src != (uint8_t)':' && !FUNC3((char *)*src, len, err_desc))
                return NULL;
        } else {
            FUNC4((char *)*src, len, err_desc);
        }
        ret = FUNC0(pool, len);
        FUNC5(ret->base, *src, len);
        ret->base[len] = '\0';
    }
    *src += len;

    return ret;
}