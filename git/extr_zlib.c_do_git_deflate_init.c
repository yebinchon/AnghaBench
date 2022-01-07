
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* msg; } ;
struct TYPE_7__ {TYPE_6__ z; } ;
typedef TYPE_1__ git_zstream ;


 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int Z_OK ;
 int deflateInit2 (TYPE_6__*,int,int ,int,int,int ) ;
 int die (char*,int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int zerr_to_string (int) ;
 int zlib_post_call (TYPE_1__*) ;
 int zlib_pre_call (TYPE_1__*) ;

__attribute__((used)) static void do_git_deflate_init(git_zstream *strm, int level, int windowBits)
{
 int status;

 memset(strm, 0, sizeof(*strm));
 zlib_pre_call(strm);
 status = deflateInit2(&strm->z, level,
      Z_DEFLATED, windowBits,
      8, Z_DEFAULT_STRATEGY);
 zlib_post_call(strm);
 if (status == Z_OK)
  return;
 die("deflateInit2: %s (%s)", zerr_to_string(status),
     strm->z.msg ? strm->z.msg : "no message");
}
