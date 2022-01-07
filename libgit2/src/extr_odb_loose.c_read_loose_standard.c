
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; int type; } ;
typedef TYPE_1__ obj_hdr ;
typedef int head ;
typedef int git_zstream ;
struct TYPE_6__ {unsigned char* data; size_t len; int type; } ;
typedef TYPE_2__ git_rawobj ;
typedef int git_buf ;


 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,int) ;
 int GIT_ERROR_ODB ;
 int GIT_ERROR_ZLIB ;
 int GIT_ZSTREAM_INFLATE ;
 int GIT_ZSTREAM_INIT ;
 int MAX_HEADER_LEN ;
 int assert (int) ;
 int git__free (unsigned char*) ;
 unsigned char* git__malloc (size_t) ;
 int git_buf_cstr (int *) ;
 int git_buf_len (int *) ;
 int git_error_set (int ,char*) ;
 int git_object_typeisloose (int ) ;
 int git_zstream_done (int *) ;
 int git_zstream_free (int *) ;
 int git_zstream_get_output (unsigned char*,size_t*,int *) ;
 int git_zstream_init (int *,int ) ;
 int git_zstream_set_input (int *,int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int parse_header (TYPE_1__*,size_t*,unsigned char*,size_t) ;

__attribute__((used)) static int read_loose_standard(git_rawobj *out, git_buf *obj)
{
 git_zstream zstream = GIT_ZSTREAM_INIT;
 unsigned char head[MAX_HEADER_LEN], *body = ((void*)0);
 size_t decompressed, head_len, body_len, alloc_size;
 obj_hdr hdr;
 int error;

 if ((error = git_zstream_init(&zstream, GIT_ZSTREAM_INFLATE)) < 0 ||
  (error = git_zstream_set_input(&zstream, git_buf_cstr(obj), git_buf_len(obj))) < 0)
  goto done;

 decompressed = sizeof(head);






 if ((error = git_zstream_get_output(head, &decompressed, &zstream)) < 0 ||
  (error = parse_header(&hdr, &head_len, head, decompressed)) < 0)
  goto done;

 if (!git_object_typeisloose(hdr.type)) {
  git_error_set(GIT_ERROR_ODB, "failed to inflate disk object");
  error = -1;
  goto done;
 }





 if (GIT_ADD_SIZET_OVERFLOW(&alloc_size, hdr.size, 1) ||
  (body = git__malloc(alloc_size)) == ((void*)0)) {
  error = -1;
  goto done;
 }

 assert(decompressed >= head_len);
 body_len = decompressed - head_len;

 if (body_len)
  memcpy(body, head + head_len, body_len);

 decompressed = hdr.size - body_len;
 if ((error = git_zstream_get_output(body + body_len, &decompressed, &zstream)) < 0)
  goto done;

 if (!git_zstream_done(&zstream)) {
  git_error_set(GIT_ERROR_ZLIB, "failed to finish zlib inflation: stream aborted prematurely");
  error = -1;
  goto done;
 }

 body[hdr.size] = '\0';

 out->data = body;
 out->len = hdr.size;
 out->type = hdr.type;

done:
 if (error < 0)
  git__free(body);

 git_zstream_free(&zstream);
 return error;
}
