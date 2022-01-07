
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR (char*) ;
 int * ifname ;
 int * ofname ;

__attribute__((used)) static int check_params(void)
{
 int ret = -1;

 if (ifname == ((void*)0)) {
  ERR("no input file specified");
  goto out;
 }

 if (ofname == ((void*)0)) {
  ERR("no output file specified");
  goto out;
 }

 ret = 0;

out:
 return ret;
}
