
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int _con_attach (int *,int *,int *,int) ;

void con_attach(Con *con, Con *parent, bool ignore_focus) {
    _con_attach(con, parent, ((void*)0), ignore_focus);
}
