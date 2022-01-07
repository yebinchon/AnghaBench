
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int db; } ;
typedef int sqlite3_stmt ;


 int db_check_error (struct mount*) ;
 int sqlite3_prepare_v2 (int ,char const*,scalar_t__,int **,int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static sqlite3_stmt *db_prepare(struct mount *mount, const char *stmt) {
    sqlite3_stmt *statement;
    sqlite3_prepare_v2(mount->db, stmt, strlen(stmt) + 1, &statement, ((void*)0));
    db_check_error(mount);
    return statement;
}
