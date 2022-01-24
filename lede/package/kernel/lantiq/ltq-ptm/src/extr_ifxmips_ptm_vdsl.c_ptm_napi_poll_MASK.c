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
struct napi_struct {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_IGU1_IER ; 
 int /*<<< orphan*/  MBOX_IGU1_ISRC ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct napi_struct *napi, int budget)
{
    int ndev = 0;
    unsigned int work_done;

    work_done = FUNC3(ndev, budget);

    //  interface down
    if ( !FUNC2(napi->dev) ) {
        FUNC1(napi);
        return work_done;
    }

    //  clear interrupt
    FUNC0(0, 1, MBOX_IGU1_ISRC);
    //  no more traffic
    if (work_done < budget) {
	FUNC1(napi);
        FUNC0(0, 1, MBOX_IGU1_IER);
        return work_done;
    }

    //  next round
    return work_done;
}