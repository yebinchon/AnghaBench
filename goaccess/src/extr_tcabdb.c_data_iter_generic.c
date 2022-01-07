
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef int TCADB ;
typedef TYPE_1__ GRawData ;


 scalar_t__ STRING ;
 int free (void*) ;
 int set_raw_data (void*,void*,TYPE_1__*) ;
 void* tcadbget (int *,void*,int,int*) ;

__attribute__((used)) static void
data_iter_generic (TCADB * adb, void *key, int ksize, void *user_data)
{
  GRawData *raw_data = user_data;
  void *value;
  int sp = 0;

  value = tcadbget (adb, key, ksize, &sp);
  if (value) {
    set_raw_data (key, value, raw_data);
    if (raw_data->type != STRING)
      free (value);
  }
}
