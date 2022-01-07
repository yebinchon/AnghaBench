
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; int origname; } ;
typedef TYPE_1__ quakefile_t ;


 int AppendPathSeperator (char*,int) ;
 int CreatePath (char*) ;
 int ExtractFileBase (int ,char*) ;
 int ExtractFileExtension (char*,char*) ;
 int MAX_PATH ;
 scalar_t__ access (char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int stricmp (char*,char*) ;
 int strlen (char*) ;

void AASOuputFile(quakefile_t *qf, char *outputpath, char *filename)
{
 char ext[MAX_PATH];


 if (strlen(outputpath))
 {
  strcpy(filename, outputpath);

  AppendPathSeperator(filename, MAX_PATH);
  ExtractFileBase(qf->origname, &filename[strlen(filename)]);

  strcat(filename, ".aas");
  return;
 }

 ExtractFileExtension(qf->filename, ext);
 if (!stricmp(ext, "pk3") || !stricmp(ext, "pak") || !stricmp(ext, "sin"))
 {
  strcpy(filename, qf->filename);
  while(strlen(filename) &&
    filename[strlen(filename)-1] != '\\' &&
    filename[strlen(filename)-1] != '/')
  {
   filename[strlen(filename)-1] = '\0';
  }
  strcat(filename, "maps");
  if (access(filename, 0x04)) CreatePath(filename);

  AppendPathSeperator(filename, MAX_PATH);
  ExtractFileBase(qf->origname, &filename[strlen(filename)]);

  strcat(filename, ".aas");
 }
 else
 {
  strcpy(filename, qf->filename);
  while(strlen(filename) &&
    filename[strlen(filename)-1] != '.')
  {
   filename[strlen(filename)-1] = '\0';
  }
  strcat(filename, "aas");
 }
}
