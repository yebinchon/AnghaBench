#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct IjkAVTreeNode {scalar_t__ logical_pos; scalar_t__ size; scalar_t__ physical_pos; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ cache_max_capacity; int cache_file_close; scalar_t__ file_logical_pos; TYPE_1__* tree_info; scalar_t__* last_physical_pos; scalar_t__ cache_physical_pos; scalar_t__ file_handle_retry_count; int /*<<< orphan*/  fd; } ;
struct TYPE_8__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {scalar_t__ physical_size; int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ IjkURLContext ;
typedef  TYPE_3__ IjkIOCacheContext ;
typedef  struct IjkAVTreeNode IjkCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FILE_RW_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cmp ; 
 int /*<<< orphan*/  FUNC2 (struct IjkAVTreeNode*) ; 
 struct IjkAVTreeNode* FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,void**) ; 
 struct IjkAVTreeNode* FUNC4 (int /*<<< orphan*/ *,struct IjkAVTreeNode*,int /*<<< orphan*/ ,struct IjkAVTreeNode**) ; 
 struct IjkAVTreeNode* FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct IjkAVTreeNode* FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

__attribute__((used)) static int64_t FUNC11(IjkURLContext *h, const unsigned char *buf, int size)
{
    IjkIOCacheContext *c= h->priv_data;
    int64_t pos = -1;
    int64_t ret = 0;
    IjkCacheEntry *entry = NULL, *next[2] = {NULL, NULL};
    IjkCacheEntry *entry_ret = NULL;
    struct IjkAVTreeNode *node = NULL;
    int64_t free_space = 0;

    //FIXME avoid lseek
    pos = FUNC8(c->fd, *c->last_physical_pos, SEEK_SET);

    if (pos < 0) {
        c->file_handle_retry_count++;
        return FUNC6(h);
    } else {
        c->cache_physical_pos = pos;
        *c->last_physical_pos = pos;
    }

    if (pos + size >= c->cache_max_capacity) {
        free_space = FUNC7(h, &pos, size);
        if (free_space < size) {
            c->cache_file_close = 1;
            return FILE_RW_ERROR;
        }
        if (pos < 0) {
            c->file_handle_retry_count++;
            return FUNC6(h);
        }
        if (free_space == c->cache_max_capacity)
            return 0;
    }

    ret = FUNC10(c->fd, buf, size);
    if (ret < 0) {
        c->file_handle_retry_count++;
        return FUNC6(h);
    } else {
        c->file_handle_retry_count = 0;
    }

    c->cache_physical_pos       += ret;
    *c->last_physical_pos       += ret;
    c->tree_info->physical_size += ret;

    entry = FUNC3(c->tree_info->root, &c->file_logical_pos, cmp, (void**)next);

    if (!entry)
        entry = next[0];

    if (!entry ||
        entry->logical_pos  + entry->size != c->file_logical_pos ||
        entry->physical_pos + entry->size != pos) {
        entry = FUNC9(sizeof(*entry));
        node = FUNC5();
        if (!entry || !node) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        entry->logical_pos = c->file_logical_pos;
        entry->physical_pos = pos;
        entry->size = ret;

        entry_ret = FUNC4(&c->tree_info->root, entry, cmp, &node);
        if (entry_ret && entry_ret != entry) {
            ret = -1;
            FUNC1(NULL, AV_LOG_ERROR, "av_tree_insert failed\n");
            goto fail;
        }
    } else
        entry->size += ret;

    return ret;
fail:
    //we could truncate the file to pos here if pos >=0 but ftruncate isn't available in VS so
    //for simplicty we just leave the file a bit larger
    FUNC2(entry);
    FUNC2(node);
    return ret;
}