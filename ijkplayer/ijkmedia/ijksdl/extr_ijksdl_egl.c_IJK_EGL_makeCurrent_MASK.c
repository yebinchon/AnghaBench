#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {scalar_t__ window; scalar_t__ display; scalar_t__ surface; scalar_t__ context; int* gles2_extensions; } ;
typedef  TYPE_1__ IJK_EGL ;
typedef  int EGLint ;
typedef  scalar_t__ EGLSurface ;
typedef  scalar_t__ EGLNativeWindowType ;
typedef  scalar_t__ EGLDisplay ;
typedef  int /*<<< orphan*/  EGLConfig ;
typedef  int /*<<< orphan*/  EGLBoolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  EGL_BLUE_SIZE 136 
#define  EGL_CONTEXT_CLIENT_VERSION 135 
 int /*<<< orphan*/  EGL_DEFAULT_DISPLAY ; 
 int /*<<< orphan*/  EGL_FALSE ; 
#define  EGL_GREEN_SIZE 134 
 int /*<<< orphan*/  EGL_NATIVE_VISUAL_ID ; 
#define  EGL_NONE 133 
 scalar_t__ EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 scalar_t__ EGL_NO_SURFACE ; 
#define  EGL_OPENGL_ES2_BIT 132 
#define  EGL_RED_SIZE 131 
#define  EGL_RENDERABLE_TYPE 130 
#define  EGL_SURFACE_TYPE 129 
 int /*<<< orphan*/  EGL_TRUE ; 
#define  EGL_WINDOW_BIT 128 
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t IJK_GLES2__GL_EXT_texture_rg ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int const*,int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int const*) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 char* FUNC20 (char const*) ; 
 char* FUNC21 (char*,char*,char**) ; 

__attribute__((used)) static EGLBoolean FUNC22(IJK_EGL* egl, EGLNativeWindowType window)
{
    if (window && window == egl->window &&
        egl->display &&
        egl->surface &&
        egl->context) {

        if (!FUNC15(egl->display, egl->surface, egl->surface, egl->context)) {
            FUNC0("[EGL] elgMakeCurrent() failed (cached)\n");
            return EGL_FALSE;
        }

        return EGL_TRUE;
    }

    FUNC4(egl);
    egl->window = window;

    if (!window)
        return EGL_FALSE;

    EGLDisplay display = FUNC12(EGL_DEFAULT_DISPLAY);
    if (display == EGL_NO_DISPLAY) {
        FUNC0("[EGL] eglGetDisplay failed\n");
        return EGL_FALSE;
    }


    EGLint major, minor;
    if (!FUNC14(display, &major, &minor)) {
        FUNC0("[EGL] eglInitialize failed\n");
        return EGL_FALSE;   
    }
    FUNC1("[EGL] eglInitialize %d.%d\n", (int)major, (int)minor);


    static const EGLint configAttribs[] = {
        EGL_RENDERABLE_TYPE,    EGL_OPENGL_ES2_BIT,
        EGL_SURFACE_TYPE,       EGL_WINDOW_BIT,
        EGL_BLUE_SIZE,          8,
        EGL_GREEN_SIZE,         8,
        EGL_RED_SIZE,           8,
        EGL_NONE
    };

    static const EGLint contextAttribs[] = {
        EGL_CONTEXT_CLIENT_VERSION, 2,
        EGL_NONE
    };

    EGLConfig config;
    EGLint numConfig;
    if (!FUNC6(display, configAttribs, &config, 1, &numConfig)) {
        FUNC0("[EGL] eglChooseConfig failed\n");
        FUNC16(display);
        return EGL_FALSE;
    }

#ifdef __ANDROID__
    {
        EGLint native_visual_id = 0;
        if (!eglGetConfigAttrib(display, config, EGL_NATIVE_VISUAL_ID, &native_visual_id)) {
            ALOGE("[EGL] eglGetConfigAttrib() returned error %d", eglGetError());
            eglTerminate(display);
            return EGL_FALSE;
        }

        int32_t width  = ANativeWindow_getWidth(window);
        int32_t height = ANativeWindow_getWidth(window);
        ALOGI("[EGL] ANativeWindow_setBuffersGeometry(f=%d);", native_visual_id);
        int ret = ANativeWindow_setBuffersGeometry(window, width, height, native_visual_id);
        if (ret) {
            ALOGE("[EGL] ANativeWindow_setBuffersGeometry(format) returned error %d", ret);
            eglTerminate(display);
            return EGL_FALSE;
        }
    }
#endif

    EGLSurface surface = FUNC8(display, config, window, NULL);
    if (surface == EGL_NO_SURFACE) {
        FUNC0("[EGL] eglCreateWindowSurface failed\n");
        FUNC16(display);
        return EGL_FALSE;
    }

    EGLSurface context = FUNC7(display, config, EGL_NO_CONTEXT, contextAttribs);
    if (context == EGL_NO_CONTEXT) {
        FUNC0("[EGL] eglCreateContext failed\n");
        FUNC10(display, surface);
        FUNC16(display);
        return EGL_FALSE;
    }

    if (!FUNC15(display, surface, surface, context)) {
        FUNC0("[EGL] elgMakeCurrent() failed (new)\n");
        FUNC9(display, context);
        FUNC10(display, surface);
        FUNC16(display);
        return EGL_FALSE;
    }

#if 0
#if defined(__ANDROID__)
    {
        const char *extensions = (const char *) glGetString(GL_EXTENSIONS);
        if (extensions) {
            char *dup_extensions = strdup(extensions);
            if (dup_extensions) {
                char *brk = NULL;
                char *ext = strtok_r(dup_extensions, " ", &brk);
                while (ext) {
                    if (0 == strcmp(ext, "GL_EXT_texture_rg"))
                        egl->gles2_extensions[IJK_GLES2__GL_EXT_texture_rg] = 1;

                    ext = strtok_r(NULL, " ", &brk);
                }

                free(dup_extensions);
            }
        }
    }
#elif defined(__APPLE__)
    egl->gles2_extensions[IJK_GLES2__GL_EXT_texture_rg] = 1;
#endif

    ALOGI("[EGL] GLES2 extensions begin:\n");
    ALOGI("[EGL]     GL_EXT_texture_rg: %d\n", egl->gles2_extensions[IJK_GLES2__GL_EXT_texture_rg]);
    ALOGI("[EGL] GLES2 extensions end.\n");
#endif

    FUNC5();

    egl->context = context;
    egl->surface = surface;
    egl->display = display;
    return EGL_TRUE;
}