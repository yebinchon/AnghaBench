
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _finddata_t {int attrib; char* name; } ;
typedef int search ;
typedef int newsubdirs ;
typedef int filename ;


 int Com_FilterPath (char*,char*,int ) ;
 int Com_sprintf (char*,int,char*,char const*,...) ;
 char* CopyString (char*) ;
 int MAX_FOUND_FILES ;
 int MAX_OSPATH ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int _A_SUBDIR ;
 int _findclose (intptr_t) ;
 intptr_t _findfirst (char*,struct _finddata_t*) ;
 int _findnext (intptr_t,struct _finddata_t*) ;
 int qfalse ;
 scalar_t__ strlen (char*) ;

void Sys_ListFilteredFiles( const char *basedir, char *subdirs, char *filter, char **list, int *numfiles )
{
 char search[MAX_OSPATH], newsubdirs[MAX_OSPATH];
 char filename[MAX_OSPATH];
 intptr_t findhandle;
 struct _finddata_t findinfo;

 if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
  return;
 }

 if (strlen(subdirs)) {
  Com_sprintf( search, sizeof(search), "%s\\%s\\*", basedir, subdirs );
 }
 else {
  Com_sprintf( search, sizeof(search), "%s\\*", basedir );
 }

 findhandle = _findfirst (search, &findinfo);
 if (findhandle == -1) {
  return;
 }

 do {
  if (findinfo.attrib & _A_SUBDIR) {
   if (Q_stricmp(findinfo.name, ".") && Q_stricmp(findinfo.name, "..")) {
    if (strlen(subdirs)) {
     Com_sprintf( newsubdirs, sizeof(newsubdirs), "%s\\%s", subdirs, findinfo.name);
    }
    else {
     Com_sprintf( newsubdirs, sizeof(newsubdirs), "%s", findinfo.name);
    }
    Sys_ListFilteredFiles( basedir, newsubdirs, filter, list, numfiles );
   }
  }
  if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
   break;
  }
  Com_sprintf( filename, sizeof(filename), "%s\\%s", subdirs, findinfo.name );
  if (!Com_FilterPath( filter, filename, qfalse ))
   continue;
  list[ *numfiles ] = CopyString( filename );
  (*numfiles)++;
 } while ( _findnext (findhandle, &findinfo) != -1 );

 _findclose (findhandle);
}
