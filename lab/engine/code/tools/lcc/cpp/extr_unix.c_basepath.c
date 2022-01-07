
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;


 scalar_t__ newstring (int *,int,int ) ;
 char* strrchr (char*,char) ;

char *basepath( char *fname )
{
 char *dp = ".";
 char *p;
 if ((p = strrchr(fname, '/')) != ((void*)0)) {
  int dlen = p - fname;
  dp = (char*)newstring((uchar*)fname, dlen+1, 0);
  dp[dlen] = '\0';
 }

 return dp;
}
