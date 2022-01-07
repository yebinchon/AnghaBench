
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct _stat {int dummy; } ;
struct TYPE_9__ {char* pakfile; char* origname; struct TYPE_9__* next; } ;
typedef TYPE_1__ quakefile_t ;
struct TYPE_10__ {int gl_pathc; char** gl_pathv; } ;
typedef TYPE_2__ glob_t ;
typedef int foldername ;
typedef int filter ;
struct TYPE_11__ {char* cFileName; } ;
typedef TYPE_3__ WIN32_FIND_DATA ;
typedef scalar_t__ HWND ;


 int AppendPathSeperator (char*,int) ;
 scalar_t__ FindFirstFile (char*,TYPE_3__*) ;
 int FindNextFile (scalar_t__,TYPE_3__*) ;
 TYPE_1__* FindQuakeFiles (char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int Log_Print (char*,char*) ;
 int MAX_PATH ;
 int S_IFDIR ;
 int _splitpath (char*,char*,char*,int *,int *) ;
 int _stat (char*,struct stat*) ;
 int glob (char*,int ,int *,TYPE_2__*) ;
 int globfree (TYPE_2__*) ;
 int sprintf (char*,char*,char*,char*) ;
 int stat (char*,struct stat*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int stricmp (char*,char*) ;
 size_t strlen (char*) ;

void CreateAASFilesForAllBSPFiles(char *quakepath)
{






 glob_t globbuf;
 struct stat statbuf;
 int j;

 char filter[MAX_PATH], bspfilter[MAX_PATH], aasfilter[MAX_PATH];
 char aasfile[MAX_PATH], buf[MAX_PATH], foldername[MAX_PATH];
 quakefile_t *qf, *qf2, *files, *bspfiles, *aasfiles;

 strcpy(filter, quakepath);
 AppendPathSeperator(filter, sizeof(filter));
 strcat(filter, "*");
 glob(filter, 0, ((void*)0), &globbuf);
 for (j = 0; j < globbuf.gl_pathc; j++)
 {
  strcpy(foldername, globbuf.gl_pathv[j]);
  stat(foldername, &statbuf);


  if (statbuf.st_mode & S_IFDIR)
  {

   AppendPathSeperator(foldername, sizeof(foldername));

   strcpy(bspfilter, foldername);
   strcat(bspfilter, "maps/*.bsp");
   files = FindQuakeFiles(bspfilter);
   strcpy(bspfilter, foldername);
   strcat(bspfilter, "*.pk3/maps/*.bsp");
   bspfiles = FindQuakeFiles(bspfilter);
   for (qf = bspfiles; qf; qf = qf->next) if (!qf->next) break;
   if (qf) qf->next = files;
   else bspfiles = files;

   strcpy(aasfilter, foldername);
   strcat(aasfilter, "maps/*.aas");
   files = FindQuakeFiles(aasfilter);
   strcpy(aasfilter, foldername);
   strcat(aasfilter, "*.pk3/maps/*.aas");
   aasfiles = FindQuakeFiles(aasfilter);
   for (qf = aasfiles; qf; qf = qf->next) if (!qf->next) break;
   if (qf) qf->next = files;
   else aasfiles = files;

   for (qf = bspfiles; qf; qf = qf->next)
   {
    sprintf(aasfile, "%s/%s", qf->pakfile, qf->origname);
    Log_Print("found %s\n", aasfile);
    strcpy(&aasfile[strlen(aasfile)-strlen(".bsp")], ".aas");
    for (qf2 = aasfiles; qf2; qf2 = qf2->next)
    {
     sprintf(buf, "%s/%s", qf2->pakfile, qf2->origname);
     if (!stricmp(aasfile, buf))
     {
      Log_Print("found %s\n", buf);
      break;
     }
    }
   }
  }





 }
 globfree(&globbuf);

}
