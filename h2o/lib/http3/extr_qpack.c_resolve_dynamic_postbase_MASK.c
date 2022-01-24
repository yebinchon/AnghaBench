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
typedef  int /*<<< orphan*/  uint8_t ;
struct st_h2o_qpack_header_table_t {int dummy; } ;
struct st_h2o_qpack_header_t {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ INT64_MAX ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,unsigned int) ; 
 char* h2o_qpack_err_invalid_dynamic_reference ; 
 struct st_h2o_qpack_header_t* FUNC1 (struct st_h2o_qpack_header_table_t*,scalar_t__,char const**) ; 

__attribute__((used)) static struct st_h2o_qpack_header_t *FUNC2(struct st_h2o_qpack_header_table_t *table, int64_t base_index,
                                                              const uint8_t **src, const uint8_t *src_end, unsigned prefix_bits,
                                                              const char **err_desc)
{
    int64_t off;

    if (FUNC0(&off, src, src_end, prefix_bits) != 0 || off > INT64_MAX - (base_index + 1)) {
        *err_desc = h2o_qpack_err_invalid_dynamic_reference;
        return NULL;
    }
    return FUNC1(table, base_index + off + 1, err_desc);
}