
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prof_emitter_cb_arg_s {int fd; int ret; } ;


 int malloc_write_fd (int ,char const*,size_t) ;
 scalar_t__ prof_log_dummy ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
prof_emitter_write_cb(void *opaque, const char *to_write) {
 struct prof_emitter_cb_arg_s *arg =
     (struct prof_emitter_cb_arg_s *)opaque;
 size_t bytes = strlen(to_write);





 arg->ret = malloc_write_fd(arg->fd, to_write, bytes);
}
