
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {int type; void* id; } ;


 int gen_uni (int ,void**,int,int*) ;
 void* tluni_check_arg ;

int gen_uni_arg (struct arg *arg, void **IP, int max_size, int *vars) {
  if (max_size <= 10) { return -1; }
  int l = 0;
  IP[l ++] = tluni_check_arg;
  IP[l ++] = arg->id;
  int y = gen_uni (arg->type, IP + l, max_size - l, vars);
  if (y < 0) { return -1;}
  l += y;
  return l;
}
