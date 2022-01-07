
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ catching ;
 int env ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void handle_segfault(int sig) {
    if (catching) {
        catching = 0;
        siglongjmp(env, 1);
    }
}
