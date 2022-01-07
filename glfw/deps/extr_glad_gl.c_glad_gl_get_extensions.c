
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLAD_VERSION_MAJOR (int) ;
 int GL_EXTENSIONS ;
 int GL_NUM_EXTENSIONS ;
 int glGetIntegerv (int ,int*) ;
 scalar_t__ glGetString (int ) ;
 scalar_t__ glGetStringi (int ,unsigned int) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static int glad_gl_get_extensions( int version, const char **out_exts, unsigned int *out_num_exts_i, char ***out_exts_i) {



    (void) version;
    (void) out_num_exts_i;
    (void) out_exts_i;

        if (glGetString == ((void*)0)) {
            return 0;
        }
        *out_exts = (const char *)glGetString(GL_EXTENSIONS);
    return 1;
}
