
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int JNIEnv ;
typedef int IJKFF_Pipeline ;


 int ffpipeline_get_surface_as_global_ref_l (int *,int *) ;
 int ffpipeline_lock_surface (int *) ;
 int ffpipeline_unlock_surface (int *) ;

jobject ffpipeline_get_surface_as_global_ref(JNIEnv *env, IJKFF_Pipeline* pipeline)
{
    ffpipeline_lock_surface(pipeline);
    jobject new_surface = ffpipeline_get_surface_as_global_ref_l(env, pipeline);
    ffpipeline_unlock_surface(pipeline);
    return new_surface;
}
