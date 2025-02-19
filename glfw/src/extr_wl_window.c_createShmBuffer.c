
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wl_shm_pool {int dummy; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_5__ {int shm; } ;
struct TYPE_7__ {TYPE_1__ wl; } ;
struct TYPE_6__ {int width; int height; scalar_t__ pixels; } ;
typedef TYPE_2__ GLFWimage ;


 int GLFW_PLATFORM_ERROR ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int WL_SHM_FORMAT_ARGB8888 ;
 TYPE_4__ _glfw ;
 int _glfwInputError (int ,char*,...) ;
 int close (int) ;
 int createAnonymousFile (int) ;
 void* mmap (int *,int,int,int ,int,int ) ;
 int munmap (void*,int) ;
 struct wl_shm_pool* wl_shm_create_pool (int ,int,int) ;
 struct wl_buffer* wl_shm_pool_create_buffer (struct wl_shm_pool*,int ,int,int,int,int ) ;
 int wl_shm_pool_destroy (struct wl_shm_pool*) ;

__attribute__((used)) static struct wl_buffer* createShmBuffer(const GLFWimage* image)
{
    struct wl_shm_pool* pool;
    struct wl_buffer* buffer;
    int stride = image->width * 4;
    int length = image->width * image->height * 4;
    void* data;
    int fd, i;

    fd = createAnonymousFile(length);
    if (fd < 0)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Creating a buffer file for %d B failed: %m",
                        length);
        return ((void*)0);
    }

    data = mmap(((void*)0), length, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (data == MAP_FAILED)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: mmap failed: %m");
        close(fd);
        return ((void*)0);
    }

    pool = wl_shm_create_pool(_glfw.wl.shm, fd, length);

    close(fd);
    unsigned char* source = (unsigned char*) image->pixels;
    unsigned char* target = data;
    for (i = 0; i < image->width * image->height; i++, source += 4)
    {
        unsigned int alpha = source[3];

        *target++ = (unsigned char) ((source[2] * alpha) / 255);
        *target++ = (unsigned char) ((source[1] * alpha) / 255);
        *target++ = (unsigned char) ((source[0] * alpha) / 255);
        *target++ = (unsigned char) alpha;
    }

    buffer =
        wl_shm_pool_create_buffer(pool, 0,
                                  image->width,
                                  image->height,
                                  stride, WL_SHM_FORMAT_ARGB8888);
    munmap(data, length);
    wl_shm_pool_destroy(pool);

    return buffer;
}
