
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct checkout {int base_dir_len; scalar_t__ refresh_cache; } ;


 int fstat (int,struct stat*) ;
 scalar_t__ fstat_is_reliable () ;

__attribute__((used)) static int fstat_output(int fd, const struct checkout *state, struct stat *st)
{

 if (fstat_is_reliable() &&
     state->refresh_cache && !state->base_dir_len) {
  fstat(fd, st);
  return 1;
 }
 return 0;
}
