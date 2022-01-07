
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data_key; char* data; } ;
typedef TYPE_1__ GKeyData ;



__attribute__((used)) static void
get_kdata (GKeyData * kdata, char *data_key, char *data)
{

  kdata->data_key = data_key;

  kdata->data = data;
}
