
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int search ;
typedef int newsubdirs ;
typedef int filename ;
typedef int DIR ;


 int Com_FilterPath (char*,char*,int ) ;
 int Com_sprintf (char*,int,char*,char const*,...) ;
 char* CopyString (char*) ;
 int MAX_FOUND_FILES ;
 int MAX_OSPATH ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int S_IFDIR ;
 int closedir (int *) ;
 int * opendir (char*) ;
 int qfalse ;
 struct dirent* readdir (int *) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strlen (char*) ;

void Sys_ListFilteredFiles( const char *basedir, char *subdirs, char *filter, char **list, int *numfiles )
{
 char search[MAX_OSPATH], newsubdirs[MAX_OSPATH];
 char filename[MAX_OSPATH];
 DIR *fdir;
 struct dirent *d;
 struct stat st;

 if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
  return;
 }

 if (strlen(subdirs)) {
  Com_sprintf( search, sizeof(search), "%s/%s", basedir, subdirs );
 }
 else {
  Com_sprintf( search, sizeof(search), "%s", basedir );
 }

 if ((fdir = opendir(search)) == ((void*)0)) {
  return;
 }

 while ((d = readdir(fdir)) != ((void*)0)) {
  Com_sprintf(filename, sizeof(filename), "%s/%s", search, d->d_name);
  if (stat(filename, &st) == -1)
   continue;

  if (st.st_mode & S_IFDIR) {
   if (Q_stricmp(d->d_name, ".") && Q_stricmp(d->d_name, "..")) {
    if (strlen(subdirs)) {
     Com_sprintf( newsubdirs, sizeof(newsubdirs), "%s/%s", subdirs, d->d_name);
    }
    else {
     Com_sprintf( newsubdirs, sizeof(newsubdirs), "%s", d->d_name);
    }
    Sys_ListFilteredFiles( basedir, newsubdirs, filter, list, numfiles );
   }
  }
  if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
   break;
  }
  Com_sprintf( filename, sizeof(filename), "%s/%s", subdirs, d->d_name );
  if (!Com_FilterPath( filter, filename, qfalse ))
   continue;
  list[ *numfiles ] = CopyString( filename );
  (*numfiles)++;
 }

 closedir(fdir);
}
