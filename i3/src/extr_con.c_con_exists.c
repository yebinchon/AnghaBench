
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int * con_by_con_id (long) ;

bool con_exists(Con *con) {
    return con_by_con_id((long)con) != ((void*)0);
}
