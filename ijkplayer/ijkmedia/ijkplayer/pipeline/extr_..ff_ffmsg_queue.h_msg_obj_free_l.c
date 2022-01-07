
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_free (void*) ;

__attribute__((used)) inline static void msg_obj_free_l(void *obj)
{
    av_free(obj);
}
