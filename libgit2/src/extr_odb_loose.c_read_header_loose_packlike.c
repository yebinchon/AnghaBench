
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int size; } ;
typedef TYPE_1__ obj_hdr ;
struct TYPE_6__ {int type; int len; } ;
typedef TYPE_2__ git_rawobj ;


 int parse_header_packlike (TYPE_1__*,size_t*,unsigned char const*,size_t) ;

__attribute__((used)) static int read_header_loose_packlike(
 git_rawobj *out, const unsigned char *data, size_t len)
{
 obj_hdr hdr;
 size_t header_len;
 int error;

 if ((error = parse_header_packlike(&hdr, &header_len, data, len)) < 0)
  return error;

 out->len = hdr.size;
 out->type = hdr.type;

 return error;
}
