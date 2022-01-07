
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct stat {scalar_t__ st_ino; } ;
struct TYPE_3__ {void* try_cleanup_inode; void* path_from_inode; void* path_rename; void* path_unlink; void* path_link; void* inode_write_stat; void* inode_read_stat; void* path_create_path; void* path_create_stat; void* path_read_stat; void* path_get_inode; void* rollback; void* commit; void* begin; } ;
struct mount {char* source; int root_fd; TYPE_1__ stmt; int lock; int db; } ;
typedef int sqlite3_stmt ;
typedef int int64_t ;
typedef scalar_t__ ino_t ;
typedef int buf ;
struct TYPE_4__ {int (* mount ) (struct mount*) ;} ;


 int ERRNO_DIE (char*) ;
 int O_RDONLY ;
 int PATH_MAX ;
 int SQLITE_DETERMINISTIC ;
 int SQLITE_OK ;
 int SQLITE_OPEN_READWRITE ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_TRACE_STMT ;
 int SQLITE_UTF8 ;
 int _EINVAL ;
 int assert (int) ;
 int close (int) ;
 int db_check_error (struct mount*) ;
 void* db_prepare (struct mount*,char*) ;
 int errno_map () ;
 int fakefs_migrate (struct mount*) ;
 int fakefs_rebuild (struct mount*) ;
 int lock_init (int *) ;
 int open (char*,int ) ;
 int printk (char*,int ) ;
 int read (int,char*,int) ;
 TYPE_2__ realfs ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_busy_timeout (int ,int) ;
 int sqlite3_close (int ) ;
 scalar_t__ sqlite3_column_int64 (int *,int ) ;
 int sqlite3_create_function (int ,char*,int,int,int *,int ,int *,int *) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_open_v2 (char*,int *,int ,int *) ;
 scalar_t__ sqlite3_step (int *) ;
 int sqlite3_trace_v2 (int ,int ,int ,int *) ;
 int sqlite_func_change_prefix ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int stub1 (struct mount*) ;
 int trace_callback ;

__attribute__((used)) static int fakefs_mount(struct mount *mount) {
    char db_path[PATH_MAX];
    strcpy(db_path, mount->source);
    char *basename = strrchr(db_path, '/') + 1;
    assert(strcmp(basename, "data") == 0);
    strcpy(basename, "meta.db");


    char buf[16] = {};
    int dbf = open(db_path, O_RDONLY);
    if (dbf < 0)
        return errno_map();
    read(dbf, buf, sizeof(buf));
    close(dbf);
    if (strncmp(buf, "SQLite format 3", 15) != 0)
        return _EINVAL;

    int err = sqlite3_open_v2(db_path, &mount->db, SQLITE_OPEN_READWRITE, ((void*)0));
    if (err != SQLITE_OK) {
        printk("error opening database: %s\n", sqlite3_errmsg(mount->db));
        sqlite3_close(mount->db);
        return _EINVAL;
    }
    sqlite3_busy_timeout(mount->db, 1000);
    sqlite3_create_function(mount->db, "change_prefix", 3, SQLITE_UTF8 | SQLITE_DETERMINISTIC, ((void*)0), sqlite_func_change_prefix, ((void*)0), ((void*)0));
    db_check_error(mount);


    sqlite3_stmt *statement = db_prepare(mount, "pragma journal_mode=wal");
    db_check_error(mount);
    sqlite3_step(statement);
    db_check_error(mount);
    sqlite3_finalize(statement);

    statement = db_prepare(mount, "pragma foreign_keys=true");
    db_check_error(mount);
    sqlite3_step(statement);
    db_check_error(mount);
    sqlite3_finalize(statement);






    err = realfs.mount(mount);
    if (err < 0)
        return err;

    err = fakefs_migrate(mount);
    if (err < 0)
        return err;





    struct stat statbuf;
    if (stat(db_path, &statbuf) < 0) ERRNO_DIE("stat database");
    ino_t db_inode = statbuf.st_ino;
    statement = db_prepare(mount, "select db_inode from meta");
    if (sqlite3_step(statement) == SQLITE_ROW) {
        if ((uint64_t) sqlite3_column_int64(statement, 0) != db_inode) {
            sqlite3_finalize(statement);
            statement = ((void*)0);
            int err = fakefs_rebuild(mount);
            if (err < 0) {
                close(mount->root_fd);
                return err;
            }
        }
    }
    if (statement != ((void*)0))
        sqlite3_finalize(statement);


    statement = db_prepare(mount, "update meta set db_inode = ?");
    sqlite3_bind_int64(statement, 1, (int64_t) db_inode);
    db_check_error(mount);
    sqlite3_step(statement);
    db_check_error(mount);
    sqlite3_finalize(statement);


    statement = db_prepare(mount, "delete from stats where not exists (select 1 from paths where inode = stats.inode)");
    db_check_error(mount);
    sqlite3_step(statement);
    db_check_error(mount);
    sqlite3_finalize(statement);

    lock_init(&mount->lock);
    mount->stmt.begin = db_prepare(mount, "begin");
    mount->stmt.commit = db_prepare(mount, "commit");
    mount->stmt.rollback = db_prepare(mount, "rollback");
    mount->stmt.path_get_inode = db_prepare(mount, "select inode from paths where path = ?");
    mount->stmt.path_read_stat = db_prepare(mount, "select inode, stat from stats natural join paths where path = ?");
    mount->stmt.path_create_stat = db_prepare(mount, "insert into stats (stat) values (?)");
    mount->stmt.path_create_path = db_prepare(mount, "insert or replace into paths values (?, last_insert_rowid())");
    mount->stmt.inode_read_stat = db_prepare(mount, "select stat from stats where inode = ?");
    mount->stmt.inode_write_stat = db_prepare(mount, "update stats set stat = ? where inode = ?");
    mount->stmt.path_link = db_prepare(mount, "insert or replace into paths (path, inode) values (?, ?)");
    mount->stmt.path_unlink = db_prepare(mount, "delete from paths where path = ?");
    mount->stmt.path_rename = db_prepare(mount, "update or replace paths set path = change_prefix(path, ?, ?) "
            "where (path >= ? and path < ?) or path = ?");
    mount->stmt.path_from_inode = db_prepare(mount, "select path from paths where inode = ?");
    mount->stmt.try_cleanup_inode = db_prepare(mount, "delete from stats where inode = ? and not exists (select 1 from paths where inode = stats.inode)");

    return 0;
}
