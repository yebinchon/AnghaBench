#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * mouse; int /*<<< orphan*/ * keyboard; int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ uiprivDateTimePickerWidget ;
typedef  int /*<<< orphan*/  guint32 ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  GdkWindow ;
typedef  int /*<<< orphan*/  GdkDisplay ;
typedef  int /*<<< orphan*/  GdkDeviceManager ;
typedef  int /*<<< orphan*/  GdkDevice ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int GDK_BUTTON_PRESS_MASK ; 
 int GDK_BUTTON_RELEASE_MASK ; 
 int /*<<< orphan*/  GDK_DEVICE_TYPE_MASTER ; 
 scalar_t__ GDK_GRAB_SUCCESS ; 
 int GDK_KEY_PRESS_MASK ; 
 int GDK_KEY_RELEASE_MASK ; 
 int /*<<< orphan*/  GDK_OWNERSHIP_WINDOW ; 
 int GDK_POINTER_MOTION_MASK ; 
 scalar_t__ GDK_SOURCE_KEYBOARD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean FUNC13(uiprivDateTimePickerWidget *d)
{
	GdkDevice *dev;
	guint32 time;
	GdkWindow *window;
	GdkDevice *keyboard, *mouse;

	dev = FUNC9();
	if (dev == NULL) {
		// this is what GtkComboBox does
		// since no device was set, just use the first available "master device"
		GdkDisplay *disp;
		GdkDeviceManager *dm;
		GList *list;

		disp = FUNC11(FUNC0(d));
		dm = FUNC7(disp);
		list = FUNC5(dm, GDK_DEVICE_TYPE_MASTER);
		dev = (GdkDevice *) (list->data);
		FUNC1(list);
	}

	time = FUNC10();
	keyboard = dev;
	mouse = FUNC2(dev);
	if (FUNC3(dev) != GDK_SOURCE_KEYBOARD) {
		dev = mouse;
		mouse = keyboard;
		keyboard = dev;
	}

	window = FUNC12(d->window);
	if (keyboard != NULL)
		if (FUNC4(keyboard, window,
			GDK_OWNERSHIP_WINDOW, TRUE,
			GDK_KEY_PRESS_MASK | GDK_KEY_RELEASE_MASK,
			NULL, time) != GDK_GRAB_SUCCESS)
			return FALSE;
	if (mouse != NULL)
		if (FUNC4(mouse, window,
			GDK_OWNERSHIP_WINDOW, TRUE,
			GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK | GDK_POINTER_MOTION_MASK,
			NULL, time) != GDK_GRAB_SUCCESS) {
			if (keyboard != NULL)
				FUNC6(keyboard, time);
			return FALSE;
		}

	FUNC8(d->window, mouse, TRUE);
	d->keyboard = keyboard;
	d->mouse = mouse;
	return TRUE;
}