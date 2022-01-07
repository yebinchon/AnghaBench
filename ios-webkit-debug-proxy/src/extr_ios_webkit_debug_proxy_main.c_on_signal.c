
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int quit_flag ;

__attribute__((used)) static void on_signal(int sig) {
  quit_flag++;
}
