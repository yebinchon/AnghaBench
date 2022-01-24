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
struct TYPE_9__ {int /*<<< orphan*/  ijk_ctx_map; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; TYPE_1__* prot; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* url_pause ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ IjkURLContext ;
typedef  TYPE_3__ IjkIOManagerContext ;

/* Variables and functions */
 int /*<<< orphan*/  IJKURL_PAUSED ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(IjkIOManagerContext *h) {
    IjkURLContext *url_ctx;
    int size = FUNC1(h->ijk_ctx_map);

    for(int i = 0; i < size; i++) {
        url_ctx = FUNC0(h->ijk_ctx_map, i);
        if (url_ctx == NULL || url_ctx->prot == NULL)
            break;

        if (url_ctx->prot->url_pause)
            url_ctx->prot->url_pause(url_ctx);
        url_ctx->state = IJKURL_PAUSED;
    }
}