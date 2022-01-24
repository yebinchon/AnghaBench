#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct stat {scalar_t__ st_ino; } ;
struct TYPE_3__ {void* try_cleanup_inode; void* path_from_inode; void* path_rename; void* path_unlink; void* path_link; void* inode_write_stat; void* inode_read_stat; void* path_create_path; void* path_create_stat; void* path_read_stat; void* path_get_inode; void* rollback; void* commit; void* begin; } ;
struct mount {char* source; int root_fd; TYPE_1__ stmt; int /*<<< orphan*/  lock; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ ino_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int (* mount ) (struct mount*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int SQLITE_DETERMINISTIC ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_OPEN_READWRITE ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_TRACE_STMT ; 
 int SQLITE_UTF8 ; 
 int _EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 void* FUNC4 (struct mount*,char*) ; 
 int FUNC5 () ; 
 int FUNC6 (struct mount*) ; 
 int FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 TYPE_2__ realfs ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqlite_func_change_prefix ; 
 scalar_t__ FUNC22 (char*,struct stat*) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 scalar_t__ FUNC25 (char*,char*,int) ; 
 char* FUNC26 (char*,char) ; 
 int FUNC27 (struct mount*) ; 
 int /*<<< orphan*/  trace_callback ; 

__attribute__((used)) static int FUNC28(struct mount *mount) {
    char db_path[PATH_MAX];
    FUNC24(db_path, mount->source);
    char *basename = FUNC26(db_path, '/') + 1;
    FUNC1(FUNC23(basename, "data") == 0);
    FUNC24(basename, "meta.db");

    // check if it is in fact a sqlite database
    char buf[16] = {};
    int dbf = FUNC9(db_path, O_RDONLY);
    if (dbf < 0)
        return FUNC5();
    FUNC11(dbf, buf, sizeof(buf));
    FUNC2(dbf);
    if (FUNC25(buf, "SQLite format 3", 15) != 0)
        return _EINVAL;

    int err = FUNC19(db_path, &mount->db, SQLITE_OPEN_READWRITE, NULL);
    if (err != SQLITE_OK) {
        FUNC10("error opening database: %s\n", FUNC17(mount->db));
        FUNC14(mount->db);
        return _EINVAL;
    }
    FUNC13(mount->db, 1000);
    FUNC16(mount->db, "change_prefix", 3, SQLITE_UTF8 | SQLITE_DETERMINISTIC, NULL, sqlite_func_change_prefix, NULL, NULL);
    FUNC3(mount);

    // let's do WAL mode
    sqlite3_stmt *statement = FUNC4(mount, "pragma journal_mode=wal");
    FUNC3(mount);
    FUNC20(statement);
    FUNC3(mount);
    FUNC18(statement);

    statement = FUNC4(mount, "pragma foreign_keys=true");
    FUNC3(mount);
    FUNC20(statement);
    FUNC3(mount);
    FUNC18(statement);

#if DEBUG_sql
    sqlite3_trace_v2(mount->db, SQLITE_TRACE_STMT, trace_callback, NULL);
#endif

    // do this now so fakefs_rebuild can use mount->root_fd
    err = realfs.mount(mount);
    if (err < 0)
        return err;

    err = FUNC6(mount);
    if (err < 0)
        return err;

    // after the filesystem is compressed, transmitted, and uncompressed, the
    // inode numbers will be different. to detect this, the inode of the
    // database file is stored inside the database and compared with the actual
    // database file inode, and if they're different we rebuild the database.
    struct stat statbuf;
    if (FUNC22(db_path, &statbuf) < 0) FUNC0("stat database");
    ino_t db_inode = statbuf.st_ino;
    statement = FUNC4(mount, "select db_inode from meta");
    if (FUNC20(statement) == SQLITE_ROW) {
        if ((uint64_t) FUNC15(statement, 0) != db_inode) {
            FUNC18(statement);
            statement = NULL;
            int err = FUNC7(mount);
            if (err < 0) {
                FUNC2(mount->root_fd);
                return err;
            }
        }
    }
    if (statement != NULL)
        FUNC18(statement);

    // save current inode
    statement = FUNC4(mount, "update meta set db_inode = ?");
    FUNC12(statement, 1, (int64_t) db_inode);
    FUNC3(mount);
    FUNC20(statement);
    FUNC3(mount);
    FUNC18(statement);

    // delete orphaned stats
    statement = FUNC4(mount, "delete from stats where not exists (select 1 from paths where inode = stats.inode)");
    FUNC3(mount);
    FUNC20(statement);
    FUNC3(mount);
    FUNC18(statement);

    FUNC8(&mount->lock);
    mount->stmt.begin = FUNC4(mount, "begin");
    mount->stmt.commit = FUNC4(mount, "commit");
    mount->stmt.rollback = FUNC4(mount, "rollback");
    mount->stmt.path_get_inode = FUNC4(mount, "select inode from paths where path = ?");
    mount->stmt.path_read_stat = FUNC4(mount, "select inode, stat from stats natural join paths where path = ?");
    mount->stmt.path_create_stat = FUNC4(mount, "insert into stats (stat) values (?)");
    mount->stmt.path_create_path = FUNC4(mount, "insert or replace into paths values (?, last_insert_rowid())");
    mount->stmt.inode_read_stat = FUNC4(mount, "select stat from stats where inode = ?");
    mount->stmt.inode_write_stat = FUNC4(mount, "update stats set stat = ? where inode = ?");
    mount->stmt.path_link = FUNC4(mount, "insert or replace into paths (path, inode) values (?, ?)");
    mount->stmt.path_unlink = FUNC4(mount, "delete from paths where path = ?");
    mount->stmt.path_rename = FUNC4(mount, "update or replace paths set path = change_prefix(path, ?, ?) "
            "where (path >= ? and path < ?) or path = ?");
    mount->stmt.path_from_inode = FUNC4(mount, "select path from paths where inode = ?");
    mount->stmt.try_cleanup_inode = FUNC4(mount, "delete from stats where inode = ? and not exists (select 1 from paths where inode = stats.inode)");

    return 0;
}