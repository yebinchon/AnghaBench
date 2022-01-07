
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GET (int ,int ) ;
 int RTLD_LAZY ;
 int dlclose (void*) ;
 void* dlopen (int *,int ) ;
 int gtk_widget_path_iter_set_object_name ;
 int gwpIterSetObjectName ;
 int newBGAlphaAttr ;
 int newFGAlphaAttr ;
 int newFeaturesAttr ;
 int pango_attr_background_alpha_new ;
 int pango_attr_font_features_new ;
 int pango_attr_foreground_alpha_new ;

void uiprivLoadFutures(void)
{
 void *handle;


 handle = dlopen(((void*)0), RTLD_LAZY);
 if (handle == ((void*)0))
  return;

 *((void **) (&newFeaturesAttr)) = dlsym(handle, "pango_attr_font_features_new");
 *((void **) (&newFGAlphaAttr)) = dlsym(handle, "pango_attr_foreground_alpha_new");
 *((void **) (&newBGAlphaAttr)) = dlsym(handle, "pango_attr_background_alpha_new");
 *((void **) (&gwpIterSetObjectName)) = dlsym(handle, "gtk_widget_path_iter_set_object_name");
 dlclose(handle);
}
