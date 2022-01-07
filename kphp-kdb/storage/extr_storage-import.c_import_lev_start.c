
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {int extra_bytes; int * str; void* split_max; void* split_min; int split_mod; int schema_id; int type; } ;


 int LEV_START ;
 int STORAGE_SCHEMA_V1 ;
 int assert (int) ;
 int binlog_write (struct lev_start*,int) ;
 int free (struct lev_start*) ;
 struct lev_start* malloc (int) ;
 int memcpy (int *,int*,int) ;
 int split_modulo ;
 void* split_rem ;
 int volume_id ;

__attribute__((used)) static void import_lev_start (void) {
  int md5_mode = 0;
  struct lev_start *E = malloc (36);
  E->type = LEV_START;
  E->schema_id = STORAGE_SCHEMA_V1;
  E->extra_bytes = 12;
  E->split_mod = split_modulo;
  E->split_min = split_rem;
  E->split_max = split_rem + 1;
  memcpy (E->str, &volume_id, 8);
  memcpy (&E->str[8], &md5_mode, 4);
  assert (!binlog_write (E, 36));
  free (E);
}
