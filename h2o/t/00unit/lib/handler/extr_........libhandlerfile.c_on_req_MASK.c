#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_sendfile_generator_t {int dummy; } ;
struct TYPE_27__ {scalar_t__ base; scalar_t__ len; } ;
struct TYPE_30__ {size_t len; int /*<<< orphan*/ * base; } ;
struct TYPE_28__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_29__ {scalar_t__ query_at; TYPE_3__ path; int /*<<< orphan*/  pool; TYPE_6__ path_normalized; TYPE_4__ method; } ;
typedef  TYPE_5__ h2o_req_t ;
typedef  TYPE_6__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_handler_t ;
struct TYPE_26__ {size_t len; int /*<<< orphan*/ * base; } ;
struct TYPE_25__ {size_t len; int /*<<< orphan*/ * base; } ;
struct TYPE_31__ {size_t max_index_file_len; int flags; int /*<<< orphan*/  mimemap; TYPE_6__* index_files; TYPE_2__ real_path; TYPE_1__ conf_path; } ;
typedef  TYPE_7__ h2o_file_handler_t ;

/* Variables and functions */
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int H2O_FILE_FLAG_DIR_LISTING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ SIZE_MAX ; 
 char* FUNC1 (size_t) ; 
 struct st_h2o_sendfile_generator_t* FUNC2 (TYPE_5__*,char*,size_t,int*,int) ; 
 scalar_t__ errno ; 
 TYPE_6__ FUNC3 (int /*<<< orphan*/ *,TYPE_6__,TYPE_6__,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 TYPE_6__ FUNC5 (scalar_t__,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int,char*,int /*<<< orphan*/ *,size_t) ; 
 TYPE_6__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC15 (TYPE_5__*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int FUNC17 (struct st_h2o_sendfile_generator_t*,TYPE_5__*,TYPE_6__,char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (TYPE_7__*,TYPE_5__*,char*,size_t) ; 

__attribute__((used)) static int FUNC19(h2o_handler_t *_self, h2o_req_t *req)
{
    h2o_file_handler_t *self = (void *)_self;
    char *rpath;
    size_t rpath_len, req_path_prefix;
    struct st_h2o_sendfile_generator_t *generator = NULL;
    int is_dir;

    if (req->path_normalized.len < self->conf_path.len) {
        h2o_iovec_t dest = FUNC13(&req->pool, self->conf_path.base, self->conf_path.len, "/");
        if (req->query_at != SIZE_MAX)
            dest = FUNC3(&req->pool, dest, FUNC5(req->path.base + req->query_at, req->path.len - req->query_at));
        FUNC12(req, 301, "Moved Permanently", dest.base, dest.len);
        return 0;
    }

    /* build path (still unterminated at the end of the block) */
    req_path_prefix = self->conf_path.len;
    rpath = FUNC1(self->real_path.len + (req->path_normalized.len - req_path_prefix) + self->max_index_file_len + 1);
    rpath_len = 0;
    FUNC14(rpath + rpath_len, self->real_path.base, self->real_path.len);
    rpath_len += self->real_path.len;
    FUNC14(rpath + rpath_len, req->path_normalized.base + req_path_prefix, req->path_normalized.len - req_path_prefix);
    rpath_len += req->path_normalized.len - req_path_prefix;

    FUNC9(req);

    h2o_iovec_t resolved_path = req->path_normalized;

    /* build generator (as well as terminating the rpath and its length upon success) */
    if (rpath[rpath_len - 1] == '/') {
        h2o_iovec_t *index_file;
        for (index_file = self->index_files; index_file->base != NULL; ++index_file) {
            FUNC14(rpath + rpath_len, index_file->base, index_file->len);
            rpath[rpath_len + index_file->len] = '\0';
            if ((generator = FUNC2(req, rpath, rpath_len + index_file->len, &is_dir, self->flags)) != NULL) {
                rpath_len += index_file->len;
                resolved_path = FUNC3(&req->pool, req->path_normalized, *index_file);
                goto Opened;
            }
            if (is_dir) {
                /* note: apache redirects "path/" to "path/index.txt/" if index.txt is a dir */
                h2o_iovec_t dest = FUNC3(&req->pool, req->path_normalized, *index_file, FUNC5(FUNC0("/")));
                dest = FUNC13(&req->pool, dest.base, dest.len, "/");
                if (req->query_at != SIZE_MAX)
                    dest =
                        FUNC3(&req->pool, dest, FUNC5(req->path.base + req->query_at, req->path.len - req->query_at));
                FUNC12(req, 301, "Moved Permantently", dest.base, dest.len);
                return 0;
            }
            if (errno != ENOENT)
                break;
        }
        if (index_file->base == NULL && (self->flags & H2O_FILE_FLAG_DIR_LISTING) != 0) {
            rpath[rpath_len] = '\0';
            int is_get = 0;
            if (FUNC6(req->method.base, req->method.len, FUNC0("GET"))) {
                is_get = 1;
            } else if (FUNC6(req->method.base, req->method.len, FUNC0("HEAD"))) {
                /* ok */
            } else {
                FUNC16(req);
                return 0;
            }
            if (FUNC15(req, rpath, rpath_len, is_get) == 0)
                return 0;
        }
    } else {
        rpath[rpath_len] = '\0';
        if ((generator = FUNC2(req, rpath, rpath_len, &is_dir, self->flags)) != NULL)
            goto Opened;
        if (is_dir) {
            h2o_iovec_t dest = FUNC3(&req->pool, req->path_normalized, FUNC5(FUNC0("/")));
            dest = FUNC13(&req->pool, dest.base, dest.len, "/");
            if (req->query_at != SIZE_MAX)
                dest = FUNC3(&req->pool, dest, FUNC5(req->path.base + req->query_at, req->path.len - req->query_at));
            FUNC12(req, 301, "Moved Permanently", dest.base, dest.len);
            return 0;
        }
    }
    /* failed to open */

    if (errno == ENFILE || errno == EMFILE) {
        FUNC11(req, "Service Unavailable", "please try again later", 0);
    } else {
        if (FUNC8(self->mimemap) && FUNC18(self, req, rpath, rpath_len) == 0)
            return 0;
        if (errno == ENOENT || errno == ENOTDIR) {
            return -1;
        } else {
            FUNC10(req, "Access Forbidden", "access forbidden", 0);
        }
    }
    return 0;

Opened:
    return FUNC17(generator, req, resolved_path, rpath, rpath_len,
                                FUNC7(self->mimemap, FUNC4(rpath, rpath_len)));
}