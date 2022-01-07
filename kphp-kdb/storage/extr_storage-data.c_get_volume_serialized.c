
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int binlogs; int disabled; int * B; } ;
typedef TYPE_1__ volume_t ;


 int STORAGE_ERR_UNKNOWN_VOLUME_ID ;
 int get_binlog_file_serialized (char*,int ) ;
 TYPE_1__* get_volume_f (long long,int ) ;
 int sprintf (char*,char*,...) ;

int get_volume_serialized (char *buffer, long long volume_id) {
  int i;
  char *p = buffer;
  volume_t *V = get_volume_f (volume_id, 0);
  if (V == ((void*)0)) {
    return STORAGE_ERR_UNKNOWN_VOLUME_ID;
  }
  p += sprintf (p, "a:%d:{"
                     "s:7:\"binlogs\";i:%d;"
                     "s:8:\"disabled\";i:%d;",
    V->binlogs + 2,
    V->binlogs,
    V->disabled
    );
  for (i = 0; i < V->binlogs; i++) {
    p += sprintf (p, "i:%d;", i);
    p += get_binlog_file_serialized (p, V->B[i]);
  }
  p += sprintf (p, "}");
  return p - buffer;
}
