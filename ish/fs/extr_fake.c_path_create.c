
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path_create_path; int path_create_stat; } ;
struct mount {TYPE_1__ stmt; } ;
struct ish_stat {int dummy; } ;


 int SQLITE_TRANSIENT ;
 int bind_path (int ,int,char const*) ;
 int db_exec_reset (struct mount*,int ) ;
 int sqlite3_bind_blob (int ,int,struct ish_stat*,int,int ) ;

void path_create(struct mount *mount, const char *path, struct ish_stat *stat) {

    sqlite3_bind_blob(mount->stmt.path_create_stat, 1, stat, sizeof(*stat), SQLITE_TRANSIENT);
    db_exec_reset(mount, mount->stmt.path_create_stat);

    bind_path(mount->stmt.path_create_path, 1, path);
    db_exec_reset(mount, mount->stmt.path_create_path);
}
