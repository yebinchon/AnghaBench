
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_PORTS ;
 int conf ;
 int def_conf ;
 int line_setup (int ,int ,int *,char*,char*) ;

__attribute__((used)) static int ssl_chan_setup(char *str)
{
 line_setup(conf, NR_PORTS, &def_conf, str, "serial line");
 return 1;
}
