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
struct ht16k33_priv {int /*<<< orphan*/  client; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; int state; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int BL_CORE_FBBLANK ; 
 scalar_t__ FB_BLANK_UNBLANK ; 
 int REG_BRIGHTNESS ; 
 struct ht16k33_priv* FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct ht16k33_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ht16k33_priv*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct backlight_device *bl)
{
	int brightness = bl->props.brightness;
	struct ht16k33_priv *priv = FUNC0(bl);

	if (bl->props.power != FB_BLANK_UNBLANK ||
	    bl->props.fb_blank != FB_BLANK_UNBLANK ||
	    bl->props.state & BL_CORE_FBBLANK || brightness == 0) {
		return FUNC1(priv);
	}

	FUNC2(priv);
	return FUNC3(priv->client,
				    REG_BRIGHTNESS | (brightness - 1));
}