
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_failure {int size; int * prog; } ;
struct connection {int dummy; } ;


 int return_one_key (struct connection*,char const*,int *,int ) ;
 int vkprintf (int,char*,int *,int ) ;

__attribute__((used)) static int stat_failure_write (struct connection *c, const char *key, struct stat_failure *S) {
  vkprintf (4, "stat_failure_write (S->prog: %s, S->size: %d)\n", S->prog, S->size);
  if (S->prog == ((void*)0)) {
    return 0;
  }
  return return_one_key (c, key, S->prog, S->size);
}
