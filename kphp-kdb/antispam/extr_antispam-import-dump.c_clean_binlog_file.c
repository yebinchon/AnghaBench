
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {int member_3; int member_5; int member_4; int member_2; int member_1; int member_0; } ;
typedef int record ;
typedef int FILE ;


 int ANTISPAM_SCHEMA_V1 ;
 int LEV_START ;
 char* binlogname ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fwrite (struct lev_start*,int,int,int *) ;
 int stderr ;

__attribute__((used)) static void clean_binlog_file () {
  FILE *f = fopen (binlogname, "wb");
  if (f == 0) {
    fprintf (stderr, "fatal: can't open binlogname=%s, to cleanup (-c option)\n", binlogname);
    exit (1);
  }
  struct lev_start record = {LEV_START, ANTISPAM_SCHEMA_V1, 0, 1, 0, 1};
  fwrite (&record, sizeof (record) - 4, 1, f);
  fclose (f);
}
