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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sdl_amedia_status_t ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_5__ {TYPE_1__* common; } ;
struct TYPE_4__ {int /*<<< orphan*/  fake_fifo; } ;
typedef  TYPE_2__ SDL_AMediaCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

sdl_amedia_status_t FUNC1(SDL_AMediaCodec* acodec, size_t idx, off_t offset, size_t size, uint64_t time, uint32_t flags)
{
    return FUNC0(&acodec->common->fake_fifo, idx, offset, size, time, flags);
}