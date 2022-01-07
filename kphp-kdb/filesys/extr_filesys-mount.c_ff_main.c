
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ff_oper ;
 int fuse_main (int,char**,int *,int *) ;

int ff_main (int argc, char **argv) {
  return fuse_main (argc, argv, &ff_oper, ((void*)0));
}
