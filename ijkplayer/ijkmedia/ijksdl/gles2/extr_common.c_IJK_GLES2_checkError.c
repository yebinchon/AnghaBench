
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLint ;


 int ALOGE (char*,char const*,scalar_t__) ;
 scalar_t__ glGetError () ;

void IJK_GLES2_checkError(const char* op) {
    for (GLint error = glGetError(); error; error = glGetError()) {
        ALOGE("[GLES2] after %s() glError (0x%x)\n", op, error);
    }
}
