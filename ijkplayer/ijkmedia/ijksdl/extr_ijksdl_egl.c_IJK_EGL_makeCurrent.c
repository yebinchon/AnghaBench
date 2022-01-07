
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {scalar_t__ window; scalar_t__ display; scalar_t__ surface; scalar_t__ context; int* gles2_extensions; } ;
typedef TYPE_1__ IJK_EGL ;
typedef int EGLint ;
typedef scalar_t__ EGLSurface ;
typedef scalar_t__ EGLNativeWindowType ;
typedef scalar_t__ EGLDisplay ;
typedef int EGLConfig ;
typedef int EGLBoolean ;


 int ALOGE (char*,...) ;
 int ALOGI (char*,...) ;
 int ANativeWindow_getWidth (scalar_t__) ;
 int ANativeWindow_setBuffersGeometry (scalar_t__,int ,int ,int) ;


 int EGL_DEFAULT_DISPLAY ;
 int EGL_FALSE ;

 int EGL_NATIVE_VISUAL_ID ;

 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_DISPLAY ;
 scalar_t__ EGL_NO_SURFACE ;




 int EGL_TRUE ;

 int GL_EXTENSIONS ;
 int IJK_EGL_terminate (TYPE_1__*) ;
 int IJK_GLES2_Renderer_setupGLES () ;
 size_t IJK_GLES2__GL_EXT_texture_rg ;
 int eglChooseConfig (scalar_t__,int const*,int *,int,int*) ;
 scalar_t__ eglCreateContext (scalar_t__,int ,scalar_t__,int const*) ;
 scalar_t__ eglCreateWindowSurface (scalar_t__,int ,scalar_t__,int *) ;
 int eglDestroyContext (scalar_t__,scalar_t__) ;
 int eglDestroySurface (scalar_t__,scalar_t__) ;
 int eglGetConfigAttrib (scalar_t__,int ,int ,int*) ;
 scalar_t__ eglGetDisplay (int ) ;
 int eglGetError () ;
 int eglInitialize (scalar_t__,int*,int*) ;
 int eglMakeCurrent (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int eglTerminate (scalar_t__) ;
 int free (char*) ;
 scalar_t__ glGetString (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static EGLBoolean IJK_EGL_makeCurrent(IJK_EGL* egl, EGLNativeWindowType window)
{
    if (window && window == egl->window &&
        egl->display &&
        egl->surface &&
        egl->context) {

        if (!eglMakeCurrent(egl->display, egl->surface, egl->surface, egl->context)) {
            ALOGE("[EGL] elgMakeCurrent() failed (cached)\n");
            return EGL_FALSE;
        }

        return EGL_TRUE;
    }

    IJK_EGL_terminate(egl);
    egl->window = window;

    if (!window)
        return EGL_FALSE;

    EGLDisplay display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
    if (display == EGL_NO_DISPLAY) {
        ALOGE("[EGL] eglGetDisplay failed\n");
        return EGL_FALSE;
    }


    EGLint major, minor;
    if (!eglInitialize(display, &major, &minor)) {
        ALOGE("[EGL] eglInitialize failed\n");
        return EGL_FALSE;
    }
    ALOGI("[EGL] eglInitialize %d.%d\n", (int)major, (int)minor);


    static const EGLint configAttribs[] = {
        130, 132,
        129, 128,
        136, 8,
        134, 8,
        131, 8,
        133
    };

    static const EGLint contextAttribs[] = {
        135, 2,
        133
    };

    EGLConfig config;
    EGLint numConfig;
    if (!eglChooseConfig(display, configAttribs, &config, 1, &numConfig)) {
        ALOGE("[EGL] eglChooseConfig failed\n");
        eglTerminate(display);
        return EGL_FALSE;
    }
    EGLSurface surface = eglCreateWindowSurface(display, config, window, ((void*)0));
    if (surface == EGL_NO_SURFACE) {
        ALOGE("[EGL] eglCreateWindowSurface failed\n");
        eglTerminate(display);
        return EGL_FALSE;
    }

    EGLSurface context = eglCreateContext(display, config, EGL_NO_CONTEXT, contextAttribs);
    if (context == EGL_NO_CONTEXT) {
        ALOGE("[EGL] eglCreateContext failed\n");
        eglDestroySurface(display, surface);
        eglTerminate(display);
        return EGL_FALSE;
    }

    if (!eglMakeCurrent(display, surface, surface, context)) {
        ALOGE("[EGL] elgMakeCurrent() failed (new)\n");
        eglDestroyContext(display, context);
        eglDestroySurface(display, surface);
        eglTerminate(display);
        return EGL_FALSE;
    }
    IJK_GLES2_Renderer_setupGLES();

    egl->context = context;
    egl->surface = surface;
    egl->display = display;
    return EGL_TRUE;
}
