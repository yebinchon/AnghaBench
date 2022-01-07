
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COM_MatchToken (char**,char*) ;
 int Parse1DMatrix (char**,int,float*) ;

void Parse2DMatrix (char **buf_p, int y, int x, float *m) {
 int i;

 COM_MatchToken( buf_p, "(" );

 for (i = 0 ; i < y ; i++) {
  Parse1DMatrix (buf_p, x, m + i * x);
 }

 COM_MatchToken( buf_p, ")" );
}
