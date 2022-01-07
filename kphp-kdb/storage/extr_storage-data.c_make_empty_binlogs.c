
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {int extra_bytes; int split_mod; int split_min; int split_max; int * str; int schema_id; int type; } ;
typedef int FILE ;


 int LEV_START ;
 scalar_t__ LEV_STORAGE_START_SIZE ;
 int STORAGE_SCHEMA_V1 ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (struct lev_start*) ;
 scalar_t__ fwrite (struct lev_start*,int,scalar_t__,int *) ;
 int kprintf (char*,char*) ;
 struct lev_start* malloc (scalar_t__) ;
 int memcpy (int *,...) ;
 int sprintf (char*,char*,...) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

int make_empty_binlogs (int N, char *prefix, int md5_mode, int cs_id) {
  char name[32];
  char value_buff[65536];
  sprintf (name, "%d", N - 1);
  sprintf (name, "%%s%%0%dd", (int) strlen (name));
  int i;
  long long volume_id = cs_id * 1000;
  for (i = 0; i < N; i++) {
    sprintf (value_buff, name, prefix, i);
    strcat (value_buff, ".bin");
    struct lev_start *E = malloc (LEV_STORAGE_START_SIZE);
    E->type = LEV_START;
    E->schema_id = STORAGE_SCHEMA_V1;
    E->extra_bytes = 12;
    E->split_mod = N;
    E->split_min = i;
    E->split_max = i+1;
    memcpy (E->str, &volume_id, 8);
    memcpy (&E->str[8], &md5_mode, 4);
    FILE *b = fopen (value_buff, "wb");
    if (b == ((void*)0)) {
      kprintf ("fopen (%s, \"wb\") failed\n", value_buff);
      return -2;
    }
    if (fwrite (E, 1, LEV_STORAGE_START_SIZE, b) != LEV_STORAGE_START_SIZE) {
      kprintf ("writing to %s failed\n", value_buff);
      return -3;
    }
    free (E);
    fclose (b);
    volume_id++;
  }
  return 0;
}
