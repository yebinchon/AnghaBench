
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int status ;
 int uv__random_readpath (char*,char*,int) ;

__attribute__((used)) static void uv__random_devurandom_init(void) {
  char c;






  status = uv__random_readpath("/dev/random", &c, 1);
}
