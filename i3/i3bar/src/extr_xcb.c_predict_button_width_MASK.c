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
struct TYPE_2__ {int ws_min_width; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 TYPE_1__ config ; 
 int FUNC1 (int) ; 
 int ws_hoff_px ; 

__attribute__((used)) static int FUNC2(int name_width) {
    return FUNC0(name_width + 2 * FUNC1(ws_hoff_px) + 2 * FUNC1(1),
               FUNC1(config.ws_min_width));
}