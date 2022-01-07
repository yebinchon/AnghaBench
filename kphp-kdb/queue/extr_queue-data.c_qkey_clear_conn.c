
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * conn; } ;
typedef TYPE_1__ qkey ;


 TYPE_1__* qkey_get (char*,int ) ;

void qkey_clear_conn (char *kname) {
  qkey *k = qkey_get (kname, 0);
  if (k != ((void*)0)) {
    k->conn = ((void*)0);
  }
}
