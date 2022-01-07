
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct texture_object {int mem; int image; } ;
struct demo {int device; } ;


 int vkDestroyImage (int ,int ,int *) ;
 int vkFreeMemory (int ,int ,int *) ;

__attribute__((used)) static void demo_destroy_texture_image(struct demo *demo,
                                       struct texture_object *tex_obj) {

    vkDestroyImage(demo->device, tex_obj->image, ((void*)0));
    vkFreeMemory(demo->device, tex_obj->mem, ((void*)0));
}
