
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int interrupted ;

__attribute__((used)) static void sighandler(int signal) {
    interrupted = 1;
}
