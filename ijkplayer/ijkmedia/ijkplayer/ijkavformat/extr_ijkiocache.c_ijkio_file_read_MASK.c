#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_12__ {scalar_t__ logical_pos; scalar_t__ size; scalar_t__ physical_pos; } ;
struct TYPE_11__ {scalar_t__ read_logical_pos; scalar_t__ cache_physical_pos; int /*<<< orphan*/  file_handle_retry_count; scalar_t__ read_file_inner_error; int /*<<< orphan*/  fd; TYPE_1__* tree_info; } ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ IjkURLContext ;
typedef  TYPE_3__ IjkIOCacheContext ;
typedef  TYPE_4__ IjkCacheEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  cmp ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,void*,int) ; 

__attribute__((used)) static int FUNC5(IjkURLContext *h, void *dest, int to_read)
{
    IjkIOCacheContext *c   = h->priv_data;
    IjkCacheEntry *entry   = NULL;
    IjkCacheEntry *next[2] = {NULL, NULL};
    int64_t ret            = 0;
    int to_copy            = 0;

    if (!c->tree_info)
        return 0;

    entry = FUNC1(c->tree_info->root, &c->read_logical_pos, cmp, (void**)next);
    if (!entry)
        entry = next[0];

    if (entry) {
        int64_t in_block_pos = c->read_logical_pos - entry->logical_pos;
        if (in_block_pos < entry->size && entry->logical_pos <= c->read_logical_pos) {
            int64_t physical_target = entry->physical_pos + in_block_pos;
            if (c->cache_physical_pos != physical_target) {
                ret = FUNC3(c->fd, physical_target, SEEK_SET);
                if (ret < 0) {
                    c->file_handle_retry_count++;
                    FUNC2(h);
                }
            } else {
                ret = c->cache_physical_pos;
            }

            if (ret >= 0) {
                to_copy = (int)FUNC0(to_read, entry->size - in_block_pos);
                ret = FUNC4(h, dest, to_copy);
                if (ret < 0) {
                    if(c->read_file_inner_error) {
                        c->file_handle_retry_count++;
                        FUNC2(h);
                    }
                }
            }
        }
    }
    return (int)ret;
}