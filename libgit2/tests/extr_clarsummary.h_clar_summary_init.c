
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clar_summary {char const* filename; int * fp; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 struct clar_summary* malloc (int) ;

struct clar_summary *clar_summary_init(const char *filename)
{
 struct clar_summary *summary;
 FILE *fp;

 if ((fp = fopen(filename, "w")) == ((void*)0))
  return ((void*)0);

 if ((summary = malloc(sizeof(struct clar_summary))) == ((void*)0)) {
  fclose(fp);
  return ((void*)0);
 }

 summary->filename = filename;
 summary->fp = fp;

 return summary;
}
