
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* msg; } ;
struct TYPE_6__ {TYPE_4__ z; } ;
typedef TYPE_1__ git_zstream ;


 int Z_OK ;
 int error (char*,int ,char*) ;
 int inflateEnd (TYPE_4__*) ;
 int zerr_to_string (int) ;
 int zlib_post_call (TYPE_1__*) ;
 int zlib_pre_call (TYPE_1__*) ;

void git_inflate_end(git_zstream *strm)
{
 int status;

 zlib_pre_call(strm);
 status = inflateEnd(&strm->z);
 zlib_post_call(strm);
 if (status == Z_OK)
  return;
 error("inflateEnd: %s (%s)", zerr_to_string(status),
       strm->z.msg ? strm->z.msg : "no message");
}
