
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demo {int dummy; } ;


 int demo_cleanup (struct demo*) ;
 int demo_create_window (struct demo*) ;
 int demo_init (struct demo*,int const,char const**) ;
 int demo_init_vk_swapchain (struct demo*) ;
 int demo_prepare (struct demo*) ;
 int demo_run (struct demo*) ;
 int validation_error ;

int main(const int argc, const char *argv[]) {
    struct demo demo;

    demo_init(&demo, argc, argv);
    demo_create_window(&demo);
    demo_init_vk_swapchain(&demo);

    demo_prepare(&demo);
    demo_run(&demo);

    demo_cleanup(&demo);

    return validation_error;
}
