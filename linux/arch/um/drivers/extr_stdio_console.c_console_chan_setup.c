
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_TTYS ;
 int def_conf ;
 int line_setup (int ,int ,int *,char*,char*) ;
 int strncmp (char*,char*,int) ;
 int vt_conf ;

__attribute__((used)) static int console_chan_setup(char *str)
{
 if (!strncmp(str, "sole=", 5))
  return 0;

 line_setup(vt_conf, MAX_TTYS, &def_conf, str, "console");
 return 1;
}
