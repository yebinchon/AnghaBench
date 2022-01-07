
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rbcfg_update (int ) ;

__attribute__((used)) static int
rbcfg_cmd_apply(int argc, const char *argv[])
{
 return rbcfg_update(0);
}
