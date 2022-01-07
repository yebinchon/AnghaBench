
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GLAD_GL_ARB_multisample ;
 void* GLAD_GL_ARB_robustness ;
 void* GLAD_GL_KHR_debug ;
 int glad_gl_free_extensions (char**,unsigned int) ;
 int glad_gl_get_extensions (int,char const**,unsigned int*,char***) ;
 void* glad_gl_has_extension (int,char const*,unsigned int,char**,char*) ;

__attribute__((used)) static int glad_gl_find_extensions_gl( int version) {
    const char *exts = ((void*)0);
    unsigned int num_exts_i = 0;
    char **exts_i = ((void*)0);
    if (!glad_gl_get_extensions(version, &exts, &num_exts_i, &exts_i)) return 0;

    GLAD_GL_ARB_multisample = glad_gl_has_extension(version, exts, num_exts_i, exts_i, "GL_ARB_multisample");
    GLAD_GL_ARB_robustness = glad_gl_has_extension(version, exts, num_exts_i, exts_i, "GL_ARB_robustness");
    GLAD_GL_KHR_debug = glad_gl_has_extension(version, exts, num_exts_i, exts_i, "GL_KHR_debug");

    glad_gl_free_extensions(exts_i, num_exts_i);

    return 1;
}
