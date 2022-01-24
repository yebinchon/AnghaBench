#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct napi_struct {scalar_t__ dev; } ;
struct TYPE_2__ {scalar_t__ vlddes; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_IGU1_IER ; 
 int /*<<< orphan*/  MBOX_IGU1_ISRC ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__* g_net_dev ; 
 int /*<<< orphan*/  FUNC3 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 unsigned int FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct napi_struct *napi, int budget)
{
    int ndev;
    unsigned int work_done;

    for ( ndev = 0; ndev < FUNC0(g_net_dev) && g_net_dev[ndev] != napi->dev; ndev++ );

    work_done = FUNC5(ndev, budget);

    //  interface down
    if ( !FUNC4(napi->dev) ) {
        FUNC3(napi);
        return work_done;
    }

    //  no more traffic
    if ( FUNC2(ndev)->vlddes == 0 ) {
        //  clear interrupt
        FUNC1(0, 1 << ndev, MBOX_IGU1_ISRC);
        //  double check
        if ( FUNC2(ndev)->vlddes == 0 ) {
            FUNC3(napi);
            FUNC1(0, 1 << ndev, MBOX_IGU1_IER);
            return work_done;
        }
    }

    //  next round
    return work_done;
}