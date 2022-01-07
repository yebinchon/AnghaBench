
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned char* next_out; unsigned char* next_in; size_t total_out; scalar_t__ avail_out; int avail_in; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef scalar_t__ uInt ;
struct git_pack_file {int dummy; } ;
typedef int stream ;
struct TYPE_9__ {size_t len; unsigned char* data; int type; } ;
typedef TYPE_2__ git_rawobj ;
typedef int git_off_t ;
typedef int git_object_t ;
typedef int git_mwindow ;


 int GIT_EBUFS ;
 int GIT_ERROR_CHECK_ALLOC (unsigned char*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_ERROR_ZLIB ;
 int Z_BUF_ERROR ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 unsigned char* git__calloc (int,size_t) ;
 int git__free (unsigned char*) ;
 int git_error_set (int ,char*) ;
 int git_mwindow_close (int **) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 unsigned char* pack_window_open (struct git_pack_file*,int **,int ,int *) ;
 int use_git_alloc ;
 int use_git_free ;

__attribute__((used)) static int packfile_unpack_compressed(
 git_rawobj *obj,
 struct git_pack_file *p,
 git_mwindow **w_curs,
 git_off_t *curpos,
 size_t size,
 git_object_t type)
{
 size_t buf_size;
 int st;
 z_stream stream;
 unsigned char *buffer, *in;

 GIT_ERROR_CHECK_ALLOC_ADD(&buf_size, size, 1);
 buffer = git__calloc(1, buf_size);
 GIT_ERROR_CHECK_ALLOC(buffer);

 memset(&stream, 0, sizeof(stream));
 stream.next_out = buffer;
 stream.avail_out = (uInt)buf_size;
 stream.zalloc = use_git_alloc;
 stream.zfree = use_git_free;

 st = inflateInit(&stream);
 if (st != Z_OK) {
  git__free(buffer);
  git_error_set(GIT_ERROR_ZLIB, "failed to init zlib stream on unpack");

  return -1;
 }

 do {
  in = pack_window_open(p, w_curs, *curpos, &stream.avail_in);
  stream.next_in = in;
  st = inflate(&stream, Z_FINISH);
  git_mwindow_close(w_curs);

  if (!stream.avail_out)
   break;

  if (st == Z_BUF_ERROR && in == ((void*)0)) {
   inflateEnd(&stream);
   git__free(buffer);
   return GIT_EBUFS;
  }

  *curpos += stream.next_in - in;
 } while (st == Z_OK || st == Z_BUF_ERROR);

 inflateEnd(&stream);

 if ((st != Z_STREAM_END) || stream.total_out != size) {
  git__free(buffer);
  git_error_set(GIT_ERROR_ZLIB, "error inflating zlib stream");
  return -1;
 }

 obj->type = type;
 obj->len = size;
 obj->data = buffer;
 return 0;
}
