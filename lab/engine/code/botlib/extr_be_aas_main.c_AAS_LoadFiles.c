
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int aasfile ;
struct TYPE_4__ {int filename; int mapname; } ;
struct TYPE_3__ {int (* Print ) (int ,char*,char*) ;} ;


 int AAS_LoadAASFile (char*) ;
 int AAS_LoadBSPFile () ;
 int AAS_ResetEntityLinks () ;
 int BLERR_NOERROR ;
 int Com_sprintf (char*,int,char*,char const*) ;
 int MAX_QPATH ;
 int PRT_MESSAGE ;
 int Q_strncpyz (int ,char const*,int) ;
 TYPE_2__ aasworld ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,char*) ;

int AAS_LoadFiles(const char *mapname)
{
 int errnum;
 char aasfile[MAX_QPATH];

 Q_strncpyz(aasworld.mapname, mapname, sizeof(aasworld.mapname));



 AAS_ResetEntityLinks();

 AAS_LoadBSPFile();


 Com_sprintf(aasfile, sizeof(aasfile), "maps/%s.aas", mapname);
 errnum = AAS_LoadAASFile(aasfile);
 if (errnum != BLERR_NOERROR)
  return errnum;

 botimport.Print(PRT_MESSAGE, "loaded %s\n", aasfile);
 Q_strncpyz(aasworld.filename, aasfile, sizeof(aasworld.filename));
 return BLERR_NOERROR;
}
