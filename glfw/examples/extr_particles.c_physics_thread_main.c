
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_2__ {scalar_t__ p_frame; scalar_t__ d_frame; int p_done; int particles_lock; int dt; int t; int d_done; } ;
typedef int GLFWwindow ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int cnd_signal (int *) ;
 int cnd_timedwait (int *,int *,struct timespec*) ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int particle_engine (int ,int ) ;
 TYPE_1__ thread_sync ;

__attribute__((used)) static int physics_thread_main(void* arg)
{
    GLFWwindow* window = arg;

    for (;;)
    {
        mtx_lock(&thread_sync.particles_lock);


        while (!glfwWindowShouldClose(window) &&
               thread_sync.p_frame > thread_sync.d_frame)
        {
            struct timespec ts;
            clock_gettime(CLOCK_REALTIME, &ts);
            ts.tv_nsec += 100 * 1000 * 1000;
            ts.tv_sec += ts.tv_nsec / (1000 * 1000 * 1000);
            ts.tv_nsec %= 1000 * 1000 * 1000;
            cnd_timedwait(&thread_sync.d_done, &thread_sync.particles_lock, &ts);
        }

        if (glfwWindowShouldClose(window))
            break;


        particle_engine(thread_sync.t, thread_sync.dt);


        thread_sync.p_frame++;


        mtx_unlock(&thread_sync.particles_lock);
        cnd_signal(&thread_sync.p_done);
    }

    return 0;
}
