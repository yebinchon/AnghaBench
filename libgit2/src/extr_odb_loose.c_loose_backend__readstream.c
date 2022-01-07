
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_13__ ;


struct TYPE_23__ {size_t size; int type; } ;
typedef TYPE_2__ obj_hdr ;
struct TYPE_21__ {int len; int data; } ;
struct TYPE_22__ {int * free; int * read; TYPE_3__* hash_ctx; int * backend; } ;
struct TYPE_24__ {int zstream; TYPE_13__ map; TYPE_1__ stream; } ;
typedef TYPE_3__ loose_readstream ;
typedef int loose_backend ;
typedef int git_oid ;
typedef int git_odb_stream ;
typedef int git_odb_backend ;
typedef int git_object_t ;
typedef TYPE_3__ git_hash_ctx ;
struct TYPE_25__ {int ptr; } ;
typedef TYPE_5__ git_buf ;


 TYPE_5__ GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_3__*) ;
 int GIT_OBJECT_INVALID ;
 int GIT_OID_HEXSZ ;
 int GIT_ZSTREAM_INFLATE ;
 int assert (int ) ;
 TYPE_3__* git__calloc (int,int) ;
 int git__free (TYPE_3__*) ;
 TYPE_3__* git__malloc (int) ;
 int git_buf_dispose (TYPE_5__*) ;
 int git_futils_mmap_free (TYPE_13__*) ;
 int git_futils_mmap_ro_file (TYPE_13__*,int ) ;
 int git_hash_ctx_cleanup (TYPE_3__*) ;
 int git_hash_ctx_init (TYPE_3__*) ;
 int git_odb__error_notfound (char*,int const*,int ) ;
 int git_zstream_free (int *) ;
 int git_zstream_init (int *,int ) ;
 int is_zlib_compressed_data (int ,int ) ;
 scalar_t__ locate_object (TYPE_5__*,int *,int const*) ;
 int loose_backend__readstream_free ;
 int loose_backend__readstream_packlike (TYPE_2__*,TYPE_3__*) ;
 int loose_backend__readstream_read ;
 int loose_backend__readstream_standard (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int loose_backend__readstream(
 git_odb_stream **stream_out,
 size_t *len_out,
 git_object_t *type_out,
 git_odb_backend *_backend,
 const git_oid *oid)
{
 loose_backend *backend;
 loose_readstream *stream = ((void*)0);
 git_hash_ctx *hash_ctx = ((void*)0);
 git_buf object_path = GIT_BUF_INIT;
 obj_hdr hdr;
 int error = 0;

 assert(stream_out && len_out && type_out && _backend && oid);

 backend = (loose_backend *)_backend;
 *stream_out = ((void*)0);
 *len_out = 0;
 *type_out = GIT_OBJECT_INVALID;

 if (locate_object(&object_path, backend, oid) < 0) {
  error = git_odb__error_notfound("no matching loose object",
   oid, GIT_OID_HEXSZ);
  goto done;
 }

 stream = git__calloc(1, sizeof(loose_readstream));
 GIT_ERROR_CHECK_ALLOC(stream);

 hash_ctx = git__malloc(sizeof(git_hash_ctx));
 GIT_ERROR_CHECK_ALLOC(hash_ctx);

 if ((error = git_hash_ctx_init(hash_ctx)) < 0 ||
  (error = git_futils_mmap_ro_file(&stream->map, object_path.ptr)) < 0 ||
  (error = git_zstream_init(&stream->zstream, GIT_ZSTREAM_INFLATE)) < 0)
  goto done;


 if (!is_zlib_compressed_data(stream->map.data, stream->map.len))
  error = loose_backend__readstream_packlike(&hdr, stream);
 else
  error = loose_backend__readstream_standard(&hdr, stream);

 if (error < 0)
  goto done;

 stream->stream.backend = _backend;
 stream->stream.hash_ctx = hash_ctx;
 stream->stream.read = &loose_backend__readstream_read;
 stream->stream.free = &loose_backend__readstream_free;

 *stream_out = (git_odb_stream *)stream;
 *len_out = hdr.size;
 *type_out = hdr.type;

done:
 if (error < 0) {
  if (stream) {
   git_futils_mmap_free(&stream->map);
   git_zstream_free(&stream->zstream);
   git__free(stream);
  }
  if (hash_ctx) {
   git_hash_ctx_cleanup(hash_ctx);
   git__free(hash_ctx);
  }
 }

 git_buf_dispose(&object_path);
 return error;
}
