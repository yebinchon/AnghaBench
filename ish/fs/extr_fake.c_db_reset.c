
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
typedef int sqlite3_stmt ;


 int db_check_error (struct mount*) ;
 int sqlite3_reset (int *) ;

__attribute__((used)) static void db_reset(struct mount *mount, sqlite3_stmt *stmt) {
    sqlite3_reset(stmt);
    db_check_error(mount);
}
