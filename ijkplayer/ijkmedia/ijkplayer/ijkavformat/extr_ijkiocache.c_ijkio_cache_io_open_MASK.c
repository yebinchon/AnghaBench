#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* prot; } ;
struct TYPE_12__ {int /*<<< orphan*/  logical_size; TYPE_1__* tree_info; int /*<<< orphan*/  cache_file_close; TYPE_5__* inner; } ;
struct TYPE_11__ {TYPE_4__* priv_data; } ;
struct TYPE_10__ {int (* url_open2 ) (TYPE_5__*,char const*,int,int /*<<< orphan*/ **) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  file_size; } ;
typedef  TYPE_3__ IjkURLContext ;
typedef  TYPE_4__ IjkIOCacheContext ;
typedef  int /*<<< orphan*/  IjkAVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_5__*,char const*,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC3(IjkURLContext *h, const char *url, int flags, IjkAVDictionary **options) {
    int ret = 0;
    IjkIOCacheContext *c= h->priv_data;
    ret = c->inner->prot->url_open2(c->inner, url, flags, options);
    if (ret != 0) {
        return ret;
    } else {
        c->logical_size = FUNC1(h);
        if (c->tree_info && !c->cache_file_close) {
            c->tree_info->file_size = c->logical_size;
        }
    }

    FUNC0(h);
    return ret;
}