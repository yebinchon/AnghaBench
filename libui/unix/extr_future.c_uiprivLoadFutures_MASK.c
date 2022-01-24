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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gtk_widget_path_iter_set_object_name ; 
 int /*<<< orphan*/  gwpIterSetObjectName ; 
 int /*<<< orphan*/  newBGAlphaAttr ; 
 int /*<<< orphan*/  newFGAlphaAttr ; 
 int /*<<< orphan*/  newFeaturesAttr ; 
 int /*<<< orphan*/  pango_attr_background_alpha_new ; 
 int /*<<< orphan*/  pango_attr_font_features_new ; 
 int /*<<< orphan*/  pango_attr_foreground_alpha_new ; 

void FUNC3(void)
{
	void *handle;

	// dlsym() walks the dependency chain, so opening the current process should be sufficient
	handle = FUNC2(NULL, RTLD_LAZY);
	if (handle == NULL)
		return;
#define GET(var, fn) *((void **) (&var)) = dlsym(handle, #fn)
	GET(newFeaturesAttr, pango_attr_font_features_new);
	GET(newFGAlphaAttr, pango_attr_foreground_alpha_new);
	GET(newBGAlphaAttr, pango_attr_background_alpha_new);
	GET(gwpIterSetObjectName, gtk_widget_path_iter_set_object_name);
	FUNC1(handle);
}