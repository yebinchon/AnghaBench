
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
typedef int sqlite3_stmt ;


 int db_exec (struct mount*,int *) ;
 int db_reset (struct mount*,int *) ;

__attribute__((used)) static void db_exec_reset(struct mount *mount, sqlite3_stmt *stmt) {
    db_exec(mount, stmt);
    db_reset(mount, stmt);
}
