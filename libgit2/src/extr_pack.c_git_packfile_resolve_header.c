
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_pack_file {int mwf; } ;
typedef int git_packfile_stream ;
typedef scalar_t__ git_off_t ;
typedef scalar_t__ git_object_t ;
typedef int git_mwindow ;


 scalar_t__ GIT_OBJECT_OFS_DELTA ;
 scalar_t__ GIT_OBJECT_REF_DELTA ;
 scalar_t__ get_delta_base (struct git_pack_file*,int **,scalar_t__*,scalar_t__,scalar_t__) ;
 int git_delta_read_header_fromstream (size_t*,size_t*,int *) ;
 int git_mwindow_close (int **) ;
 int git_packfile_stream_dispose (int *) ;
 int git_packfile_stream_open (int *,struct git_pack_file*,scalar_t__) ;
 int git_packfile_unpack_header (size_t*,scalar_t__*,int *,int **,scalar_t__*) ;

int git_packfile_resolve_header(
  size_t *size_p,
  git_object_t *type_p,
  struct git_pack_file *p,
  git_off_t offset)
{
 git_mwindow *w_curs = ((void*)0);
 git_off_t curpos = offset;
 size_t size;
 git_object_t type;
 git_off_t base_offset;
 int error;

 error = git_packfile_unpack_header(&size, &type, &p->mwf, &w_curs, &curpos);
 if (error < 0)
  return error;

 if (type == GIT_OBJECT_OFS_DELTA || type == GIT_OBJECT_REF_DELTA) {
  size_t base_size;
  git_packfile_stream stream;

  base_offset = get_delta_base(p, &w_curs, &curpos, type, offset);
  git_mwindow_close(&w_curs);
  if ((error = git_packfile_stream_open(&stream, p, curpos)) < 0)
   return error;
  error = git_delta_read_header_fromstream(&base_size, size_p, &stream);
  git_packfile_stream_dispose(&stream);
  if (error < 0)
   return error;
 } else {
  *size_p = size;
  base_offset = 0;
 }

 while (type == GIT_OBJECT_OFS_DELTA || type == GIT_OBJECT_REF_DELTA) {
  curpos = base_offset;
  error = git_packfile_unpack_header(&size, &type, &p->mwf, &w_curs, &curpos);
  if (error < 0)
   return error;
  if (type != GIT_OBJECT_OFS_DELTA && type != GIT_OBJECT_REF_DELTA)
   break;
  base_offset = get_delta_base(p, &w_curs, &curpos, type, base_offset);
  git_mwindow_close(&w_curs);
 }
 *type_p = type;

 return error;
}
