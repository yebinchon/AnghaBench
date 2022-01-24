#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wl_data_offer {int dummy; } ;
struct wl_data_device {int dummy; } ;
struct TYPE_3__ {struct wl_data_offer* dataOffer; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;

/* Variables and functions */
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  dataOfferListener ; 
 int /*<<< orphan*/  FUNC0 (struct wl_data_offer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wl_data_offer*) ; 

__attribute__((used)) static void FUNC2(void* data,
                                      struct wl_data_device* dataDevice,
                                      struct wl_data_offer* id)
{
    if (_glfw.wl.dataOffer)
        FUNC1(_glfw.wl.dataOffer);

    _glfw.wl.dataOffer = id;
    FUNC0(_glfw.wl.dataOffer, &dataOfferListener, NULL);
}