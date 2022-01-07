
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int size; } ;
typedef TYPE_1__ obj_hdr ;
typedef int inflated ;
typedef int git_zstream ;
struct TYPE_6__ {int type; int len; } ;
typedef TYPE_2__ git_rawobj ;


 int GIT_ZSTREAM_INFLATE ;
 int GIT_ZSTREAM_INIT ;
 int MAX_HEADER_LEN ;
 int git_zstream_free (int *) ;
 int git_zstream_get_output_chunk (unsigned char*,size_t*,int *) ;
 int git_zstream_init (int *,int ) ;
 int git_zstream_set_input (int *,unsigned char const*,size_t) ;
 int parse_header (TYPE_1__*,size_t*,unsigned char*,size_t) ;

__attribute__((used)) static int read_header_loose_standard(
 git_rawobj *out, const unsigned char *data, size_t len)
{
 git_zstream zs = GIT_ZSTREAM_INIT;
 obj_hdr hdr;
 unsigned char inflated[MAX_HEADER_LEN];
 size_t header_len, inflated_len = sizeof(inflated);
 int error;

 if ((error = git_zstream_init(&zs, GIT_ZSTREAM_INFLATE)) < 0 ||
  (error = git_zstream_set_input(&zs, data, len)) < 0 ||
  (error = git_zstream_get_output_chunk(inflated, &inflated_len, &zs)) < 0 ||
  (error = parse_header(&hdr, &header_len, inflated, inflated_len)) < 0)
  goto done;

 out->len = hdr.size;
 out->type = hdr.type;

done:
 git_zstream_free(&zs);
 return error;
}
