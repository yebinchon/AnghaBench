
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {size_t short_oid_len; int found; scalar_t__ res_oid; void* dir_len; scalar_t__ short_oid; } ;
typedef TYPE_1__ loose_locate_object_state ;
struct TYPE_15__ {char* objects_dir; } ;
typedef TYPE_2__ loose_backend ;
typedef int git_oid ;
struct TYPE_16__ {char* ptr; int size; } ;
typedef TYPE_3__ git_buf ;


 int GIT_EAMBIGUOUS ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_OID_HEXSZ ;
 int fn_locate_object_short_oid ;
 scalar_t__ git_buf_grow (TYPE_3__*,size_t) ;
 void* git_buf_len (TYPE_3__*) ;
 scalar_t__ git_buf_put (TYPE_3__*,char*,int) ;
 int git_buf_set (TYPE_3__*,char*,size_t) ;
 int git_buf_truncate (TYPE_3__*,size_t) ;
 int git_odb__error_ambiguous (char*) ;
 int git_odb__error_notfound (char*,int const*,size_t) ;
 int git_oid_fmt (char*,int const*) ;
 int git_oid_fromstr (int *,char*) ;
 int git_oid_pathfmt (char*,int *) ;
 int git_path_direach (TYPE_3__*,int ,int ,TYPE_1__*) ;
 int git_path_isdir (char*) ;
 int git_path_to_dir (TYPE_3__*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int locate_object_short_oid(
 git_buf *object_location,
 git_oid *res_oid,
 loose_backend *backend,
 const git_oid *short_oid,
 size_t len)
{
 char *objects_dir = backend->objects_dir;
 size_t dir_len = strlen(objects_dir), alloc_len;
 loose_locate_object_state state;
 int error;


 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, dir_len, GIT_OID_HEXSZ);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, alloc_len, 3);
 if (git_buf_grow(object_location, alloc_len) < 0)
  return -1;

 git_buf_set(object_location, objects_dir, dir_len);
 git_path_to_dir(object_location);


 dir_len = git_buf_len(object_location);


 git_oid_fmt((char *)state.short_oid, short_oid);


 if (git_buf_put(object_location, (char *)state.short_oid, 3) < 0)
  return -1;
 object_location->ptr[object_location->size - 1] = '/';


 if (git_path_isdir(object_location->ptr) == 0)
  return git_odb__error_notfound("no matching loose object for prefix",
   short_oid, len);

 state.dir_len = git_buf_len(object_location);
 state.short_oid_len = len;
 state.found = 0;


 error = git_path_direach(
  object_location, 0, fn_locate_object_short_oid, &state);
 if (error < 0 && error != GIT_EAMBIGUOUS)
  return error;

 if (!state.found)
  return git_odb__error_notfound("no matching loose object for prefix",
   short_oid, len);

 if (state.found > 1)
  return git_odb__error_ambiguous("multiple matches in loose objects");


 error = git_oid_fromstr(res_oid, (char *)state.res_oid);
 if (error)
  return error;


 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, dir_len, GIT_OID_HEXSZ);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, alloc_len, 2);

 git_buf_truncate(object_location, dir_len);
 if (git_buf_grow(object_location, alloc_len) < 0)
  return -1;

 git_oid_pathfmt(object_location->ptr + dir_len, res_oid);

 object_location->size += GIT_OID_HEXSZ + 1;
 object_location->ptr[object_location->size] = '\0';

 return 0;
}
