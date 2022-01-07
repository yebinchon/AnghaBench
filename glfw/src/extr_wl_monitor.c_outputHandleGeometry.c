
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_output {int dummy; } ;
struct TYPE_2__ {void* y; void* x; } ;
struct _GLFWmonitor {int name; void* heightMM; void* widthMM; TYPE_1__ wl; } ;
typedef int name ;
typedef void* int32_t ;


 int _glfw_strdup (char*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static void outputHandleGeometry(void* data,
                                 struct wl_output* output,
                                 int32_t x,
                                 int32_t y,
                                 int32_t physicalWidth,
                                 int32_t physicalHeight,
                                 int32_t subpixel,
                                 const char* make,
                                 const char* model,
                                 int32_t transform)
{
    struct _GLFWmonitor *monitor = data;
    char name[1024];

    monitor->wl.x = x;
    monitor->wl.y = y;
    monitor->widthMM = physicalWidth;
    monitor->heightMM = physicalHeight;

    snprintf(name, sizeof(name), "%s %s", make, model);
    monitor->name = _glfw_strdup(name);
}
