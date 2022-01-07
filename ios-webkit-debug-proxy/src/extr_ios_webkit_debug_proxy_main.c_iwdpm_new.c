
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwdpm_struct {int dummy; } ;
typedef int * iwdpm_t ;


 int * malloc (int) ;
 int memset (int *,int ,int) ;

iwdpm_t iwdpm_new(int argc, char **argv, int *to_exit) {
  iwdpm_t self = malloc(sizeof(struct iwdpm_struct));
  if (!self) {
    return ((void*)0);
  }
  memset(self, 0, sizeof(struct iwdpm_struct));
  return self;
}
