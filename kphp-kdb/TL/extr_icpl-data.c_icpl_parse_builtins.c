
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 scalar_t__ icpl_parse (char*) ;

void icpl_parse_builtins (void) {
  if (icpl_parse ("True/0; False/0; + /2; - /2; * /2; / /2; == /2; < /2; > /2; <= /2; != /2; >= /2;") < 0) {
    exit (1);
  }
}
