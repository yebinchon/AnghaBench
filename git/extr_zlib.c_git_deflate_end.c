
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* msg; } ;
struct TYPE_6__ {TYPE_1__ z; } ;
typedef TYPE_2__ git_zstream ;


 int Z_OK ;
 int error (char*,int ,char*) ;
 int git_deflate_abort (TYPE_2__*) ;
 int zerr_to_string (int) ;

void git_deflate_end(git_zstream *strm)
{
 int status = git_deflate_abort(strm);

 if (status == Z_OK)
  return;
 error("deflateEnd: %s (%s)", zerr_to_string(status),
       strm->z.msg ? strm->z.msg : "no message");
}
