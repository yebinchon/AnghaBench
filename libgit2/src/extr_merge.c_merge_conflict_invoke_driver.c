
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int git_oid ;
typedef int git_odb ;
struct TYPE_18__ {int repo; } ;
typedef TYPE_1__ git_merge_driver_source ;
struct TYPE_19__ {int (* apply ) (TYPE_2__*,char const**,void**,TYPE_5__*,char const*,TYPE_1__*) ;} ;
typedef TYPE_2__ git_merge_driver ;
struct TYPE_20__ {int pool; } ;
typedef TYPE_3__ git_merge_diff_list ;
struct TYPE_21__ {struct TYPE_21__* path; void* file_size; void* mode; int id; } ;
typedef TYPE_4__ git_index_entry ;
struct TYPE_22__ {scalar_t__ size; int ptr; } ;
typedef TYPE_5__ git_buf ;


 TYPE_5__ GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_4__*) ;
 int GIT_OBJECT_BLOB ;
 int git_buf_dispose (TYPE_5__*) ;
 int git_odb_free (int *) ;
 int git_odb_write (int *,int *,int ,scalar_t__,int ) ;
 int git_oid_cpy (int *,int *) ;
 TYPE_4__* git_pool_mallocz (int *,int) ;
 TYPE_4__* git_pool_strdup (int *,char const*) ;
 int git_repository_odb (int **,int ) ;
 int stub1 (TYPE_2__*,char const**,void**,TYPE_5__*,char const*,TYPE_1__*) ;

__attribute__((used)) static int merge_conflict_invoke_driver(
 git_index_entry **out,
 const char *name,
 git_merge_driver *driver,
 git_merge_diff_list *diff_list,
 git_merge_driver_source *src)
{
 git_index_entry *result;
 git_buf buf = GIT_BUF_INIT;
 const char *path;
 uint32_t mode;
 git_odb *odb = ((void*)0);
 git_oid oid;
 int error;

 *out = ((void*)0);

 if ((error = driver->apply(driver, &path, &mode, &buf, name, src)) < 0 ||
  (error = git_repository_odb(&odb, src->repo)) < 0 ||
  (error = git_odb_write(&oid, odb, buf.ptr, buf.size, GIT_OBJECT_BLOB)) < 0)
  goto done;

 result = git_pool_mallocz(&diff_list->pool, sizeof(git_index_entry));
 GIT_ERROR_CHECK_ALLOC(result);

 git_oid_cpy(&result->id, &oid);
 result->mode = mode;
 result->file_size = (uint32_t)buf.size;

 result->path = git_pool_strdup(&diff_list->pool, path);
 GIT_ERROR_CHECK_ALLOC(result->path);

 *out = result;

done:
 git_buf_dispose(&buf);
 git_odb_free(odb);

 return error;
}
