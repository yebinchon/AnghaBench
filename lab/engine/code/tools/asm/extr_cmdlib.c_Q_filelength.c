
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;

int Q_filelength (FILE *f)
{
 int pos;
 int end;

 pos = ftell (f);
 fseek (f, 0, SEEK_END);
 end = ftell (f);
 fseek (f, pos, SEEK_SET);

 return end;
}
