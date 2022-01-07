
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;


 int ALOGI (char*,char const*,char const*) ;
 scalar_t__ glGetString (int ) ;

void IJK_GLES2_printString(const char *name, GLenum s) {
    const char *v = (const char *) glGetString(s);
    ALOGI("[GLES2] %s = %s\n", name, v);
}
