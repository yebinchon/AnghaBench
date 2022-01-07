
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
typedef TYPE_2__ obj_hdr ;
struct TYPE_7__ {int len; int data; } ;
struct TYPE_9__ {size_t start_len; int start; int zstream; TYPE_1__ map; } ;
typedef TYPE_3__ loose_readstream ;
typedef int head ;


 int GIT_ERROR_ODB ;
 int MAX_HEADER_LEN ;
 int git_error_set (int ,char*) ;
 int git_object_typeisloose (int ) ;
 int git_zstream_get_output (unsigned char*,size_t*,int *) ;
 int git_zstream_set_input (int *,int ,int ) ;
 int memcpy (int ,unsigned char*,size_t) ;
 int parse_header (TYPE_2__*,size_t*,unsigned char*,size_t) ;

__attribute__((used)) static int loose_backend__readstream_standard(
 obj_hdr *hdr,
 loose_readstream *stream)
{
 unsigned char head[MAX_HEADER_LEN];
 size_t init, head_len;
 int error;

 if ((error = git_zstream_set_input(&stream->zstream,
   stream->map.data, stream->map.len)) < 0)
  return error;

 init = sizeof(head);






 if ((error = git_zstream_get_output(head, &init, &stream->zstream)) < 0 ||
  (error = parse_header(hdr, &head_len, head, init)) < 0)
  return error;

 if (!git_object_typeisloose(hdr->type)) {
  git_error_set(GIT_ERROR_ODB, "failed to inflate disk object");
  return -1;
 }

 if (init > head_len) {
  stream->start_len = init - head_len;
  memcpy(stream->start, head + head_len, init - head_len);
 }

 return 0;
}
