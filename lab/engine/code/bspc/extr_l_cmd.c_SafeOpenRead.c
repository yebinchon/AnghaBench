
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int Error (char*,char*,int ) ;
 int errno ;
 int * fopen (char*,char*) ;
 int strerror (int ) ;

FILE *SafeOpenRead (char *filename)
{
 FILE *f;

 f = fopen(filename, "rb");

 if (!f)
  Error ("Error opening %s: %s",filename,strerror(errno));

 return f;
}
