
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int db; } ;





 int die (char*,int ) ;
 int sqlite3_errcode (int ) ;
 int sqlite3_errmsg (int ) ;

__attribute__((used)) static void db_check_error(struct mount *mount) {
    int errcode = sqlite3_errcode(mount->db);
    switch (errcode) {
        case 129:
        case 128:
        case 130:
            break;

        default:
            die("sqlite error: %s", sqlite3_errmsg(mount->db));
    }
}
