#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yrmcds_error ;
struct TYPE_4__ {int /*<<< orphan*/ * records; } ;
struct TYPE_5__ {int sock; TYPE_1__ stats; int /*<<< orphan*/ * recvbuf; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ yrmcds_cnt ;

/* Variables and functions */
 int /*<<< orphan*/  YRMCDS_BAD_ARGUMENT ; 
 int /*<<< orphan*/  YRMCDS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

yrmcds_error
FUNC3(yrmcds_cnt* c) {
    if( c == NULL )
        return YRMCDS_BAD_ARGUMENT;
    if( c->sock == -1 )
        return YRMCDS_OK;

    FUNC0(c->sock);
    c->sock = -1;
#ifndef LIBYRMCDS_NO_INTERNAL_LOCK
    FUNC2(&(c->lock));
#endif
    FUNC1(c->recvbuf);
    c->recvbuf = NULL;
    FUNC1(c->stats.records);
    c->stats.records = NULL;
    return YRMCDS_OK;
}