
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
typedef int sqlite3_stmt ;


 int SQLITE_ROW ;
 int db_check_error (struct mount*) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static bool db_exec(struct mount *mount, sqlite3_stmt *stmt) {
    int err = sqlite3_step(stmt);
    db_check_error(mount);
    return err == SQLITE_ROW;
}
