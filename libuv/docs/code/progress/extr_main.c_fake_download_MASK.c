#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data; } ;
typedef  TYPE_1__ uv_work_t ;
struct TYPE_6__ {void* data; } ;

/* Variables and functions */
 TYPE_2__ async ; 
 int percentage ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(uv_work_t *req) {
    int size = *((int*) req->data);
    int downloaded = 0;
    while (downloaded < size) {
        percentage = downloaded*100.0/size;
        async.data = (void*) &percentage;
        FUNC2(&async);

        FUNC1(1);
        downloaded += (200+FUNC0())%1000; // can only download max 1000bytes/sec,
                                           // but at least a 200;
    }
}