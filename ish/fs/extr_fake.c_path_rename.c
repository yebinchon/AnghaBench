
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path_rename; } ;
struct mount {TYPE_1__ stmt; } ;


 int SQLITE_TRANSIENT ;
 int bind_path (int ,int,char const*) ;
 int db_exec_reset (struct mount*,int ) ;
 int memcpy (char*,char const*,size_t) ;
 int sqlite3_bind_blob (int ,int,char*,size_t,int ) ;
 int sqlite3_bind_int64 (int ,int,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void path_rename(struct mount *mount, const char *src, const char *dst) {
    size_t src_len = strlen(src);
    sqlite3_bind_int64(mount->stmt.path_rename, 1, src_len);
    bind_path(mount->stmt.path_rename, 2, dst);
    char src_extra[src_len + 1];
    memcpy(src_extra, src, src_len);
    src_extra[src_len] = '/';
    sqlite3_bind_blob(mount->stmt.path_rename, 3, src_extra, src_len + 1, SQLITE_TRANSIENT);
    src_extra[src_len] = '0';
    sqlite3_bind_blob(mount->stmt.path_rename, 4, src_extra, src_len + 1, SQLITE_TRANSIENT);
    sqlite3_bind_blob(mount->stmt.path_rename, 5, src_extra, src_len, SQLITE_TRANSIENT);
    db_exec_reset(mount, mount->stmt.path_rename);
}
