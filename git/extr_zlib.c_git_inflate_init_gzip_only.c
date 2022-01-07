
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
 int die (char*,int ,char*) ;
 int inflateInit2 (TYPE_4__*,int const) ;
 int zerr_to_string (int) ;
 int zlib_post_call (TYPE_1__*) ;
 int zlib_pre_call (TYPE_1__*) ;

void git_inflate_init_gzip_only(git_zstream *strm)
{




 const int windowBits = 15 + 16;
 int status;

 zlib_pre_call(strm);
 status = inflateInit2(&strm->z, windowBits);
 zlib_post_call(strm);
 if (status == Z_OK)
  return;
 die("inflateInit2: %s (%s)", zerr_to_string(status),
     strm->z.msg ? strm->z.msg : "no message");
}
