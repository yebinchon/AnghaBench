
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keep_db_files; } ;
typedef int TCADB ;


 int FATAL (char*,char*) ;
 int LOG_DEBUG (char*) ;
 TYPE_1__ conf ;
 int free (char*) ;
 int tcadbclose (int *) ;
 int tcadbdel (int *) ;
 int tcremovelink (char*) ;

__attribute__((used)) static int
tc_db_close (TCADB * adb, char *dbname)
{
  if (adb == ((void*)0))
    return 1;


  if (!tcadbclose (adb))
    FATAL ("Unable to close DB: %s", dbname);


  tcadbdel (adb);






  free (dbname);

  return 0;
}
