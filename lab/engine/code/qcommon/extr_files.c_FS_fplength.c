
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int *,long,int ) ;
 long ftell (int *) ;

long FS_fplength(FILE *h)
{
 long pos;
 long end;

 pos = ftell(h);
 fseek(h, 0, SEEK_END);
 end = ftell(h);
 fseek(h, pos, SEEK_SET);

 return end;
}
