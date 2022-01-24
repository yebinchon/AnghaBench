#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ SDL_Vout ;
typedef  int /*<<< orphan*/  SDL_AMediaCodecBufferProxy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(SDL_Vout *vout, SDL_AMediaCodecBufferProxy *proxy, bool render)
{
    int ret = 0;

    if (!proxy)
        return 0;

    FUNC0(vout->mutex);
    ret = FUNC2(vout, proxy, render);
    FUNC1(vout->mutex);
    return ret;
}