#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_17__ {TYPE_2__* prot; } ;
struct TYPE_16__ {scalar_t__ logical_pos; scalar_t__ size; } ;
struct TYPE_15__ {scalar_t__ file_logical_pos; scalar_t__ file_logical_end; int io_eof_reached; scalar_t__ logical_size; scalar_t__ file_inner_pos; scalar_t__ async_open; int io_error; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  cond_wakeup_file_background; int /*<<< orphan*/ * cache_count_bytes; TYPE_6__* inner; int /*<<< orphan*/  inner_options; int /*<<< orphan*/  inner_flags; int /*<<< orphan*/  inner_url; TYPE_1__* tree_info; } ;
struct TYPE_14__ {TYPE_4__* priv_data; } ;
struct TYPE_13__ {scalar_t__ (* url_seek ) (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ) ;scalar_t__ (* url_read ) (TYPE_6__*,unsigned char*,int) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_3__ IjkURLContext ;
typedef  TYPE_4__ IjkIOCacheContext ;
typedef  TYPE_5__ IjkCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC2 (TYPE_3__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  cmp ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_6__*,unsigned char*,int) ; 

__attribute__((used)) static int64_t FUNC11(IjkURLContext *h) {
    IjkIOCacheContext *c= h->priv_data;
    int64_t r;
    unsigned char buf[4096] = {0};
    int to_read = 4096;
    int64_t to_copy = (int64_t)to_read;

    IjkCacheEntry *root = NULL ,*l_entry = NULL, *r_entry = NULL, *next[2] = {NULL, NULL};

    if (!c || !c->inner || !c->inner->prot)
        return FUNC1(ENOSYS);

    root = FUNC4(c->tree_info->root, &c->file_logical_pos, cmp, (void**)next);

    if (!root)
        l_entry = next[0];

    if (l_entry) {
        int64_t in_block_pos = c->file_logical_pos - l_entry->logical_pos;
        FUNC3(l_entry->logical_pos <= c->file_logical_pos);
        if (in_block_pos < l_entry->size) {
            c->file_logical_pos = l_entry->logical_pos + l_entry->size;
        }
    } else if (root) {
        int64_t in_block_pos = c->file_logical_pos - root->logical_pos;
        FUNC3(root->logical_pos <= c->file_logical_pos);
        if (in_block_pos < root->size) {
            c->file_logical_pos = root->logical_pos + root->size;
        }
    }

    r_entry = next[1];

    if (r_entry) {
        to_copy = r_entry->logical_pos - c->file_logical_pos;
        to_copy = FUNC0(to_copy, to_read);
    }

    if (to_copy == 0) {
        return 0;
    }

    if (c->file_logical_end > 0 && c->file_logical_pos == c->file_logical_end) {
        c->io_eof_reached = 1;
        return 0;
    }

    if (c->file_logical_pos >= c->logical_size) {
        c->io_eof_reached = 1;
        return 0;
    }
    if (c->file_logical_pos != c->file_inner_pos) {
        if (c->async_open > 0) {
            r = FUNC5(h, c->inner_url, c->inner_flags, &c->inner_options);
            if (r != 0) {
                c->io_eof_reached = 1;
                c->io_error = (int)r;
                return r;
            }
            c->async_open = 0;
        }

        r = c->inner->prot->url_seek(c->inner, c->file_logical_pos, SEEK_SET);

        if (r < 0) {
            c->io_eof_reached = 1;
            if (c->file_logical_end == c->file_logical_pos) {
                c->file_inner_pos = c->file_logical_end;
            }
            return r;
        }
        c->file_inner_pos = r;
    }
    if (c->async_open > 0) {
        r = FUNC5(h, c->inner_url, c->inner_flags, &c->inner_options);
        if (r != 0) {
            c->io_eof_reached = 1;
            c->io_error = (int)r;
            return r;
        }
        c->async_open = 0;
    }
    r = c->inner->prot->url_read(c->inner, buf, (int)to_copy);
    if (r == 0 && to_copy > 0) {
        c->file_logical_end = c->file_logical_pos;
    }
    if (r <= 0) {
        c->io_eof_reached = 1;
        c->io_error = (int)r;
        return r;
    }
    *c->cache_count_bytes += r;
    c->file_inner_pos += r;

    FUNC7(&c->file_mutex);
    r = FUNC2(h, buf, (int)r);

    if (r > 0) {
        c->file_logical_pos += r;
        FUNC6(&c->cond_wakeup_file_background);
    }
    FUNC8(&c->file_mutex);

    return r;
}