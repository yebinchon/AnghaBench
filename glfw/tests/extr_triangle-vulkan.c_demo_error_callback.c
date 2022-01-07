
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*,char const*) ;
 int stdout ;

__attribute__((used)) static void demo_error_callback(int error, const char* description) {
    printf("GLFW error: %s\n", description);
    fflush(stdout);
}
