#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sdl_amedia_status_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* func_flush ) (TYPE_2__*) ;TYPE_1__* common; } ;
struct TYPE_6__ {int /*<<< orphan*/  fake_fifo; } ;
typedef  TYPE_2__ SDL_AMediaCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (TYPE_2__*)) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

sdl_amedia_status_t FUNC3(SDL_AMediaCodec* acodec)
{
    FUNC1(acodec->func_flush);
    FUNC0(&acodec->common->fake_fifo);
    return acodec->func_flush(acodec);
}