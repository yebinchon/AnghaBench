
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAGIC_SIGALTSTK ;

__attribute__((used)) static inline int is_do_ss_needed(unsigned int magic)
{
 if (MAGIC_SIGALTSTK == magic)
  return 1;
 else
  return 0;
}
