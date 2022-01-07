
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ avail_in; char* msg; int avail_out; } ;
struct TYPE_6__ {scalar_t__ avail_in; TYPE_5__ z; scalar_t__ avail_out; } ;
typedef TYPE_1__ git_zstream ;



 int Z_MEM_ERROR ;


 int deflate (TYPE_5__*,int) ;
 int die (char*) ;
 int error (char*,int ,char*) ;
 int zerr_to_string (int) ;
 int zlib_post_call (TYPE_1__*) ;
 int zlib_pre_call (TYPE_1__*) ;

int git_deflate(git_zstream *strm, int flush)
{
 int status;

 for (;;) {
  zlib_pre_call(strm);


  status = deflate(&strm->z,
     (strm->z.avail_in != strm->avail_in)
     ? 0 : flush);
  if (status == Z_MEM_ERROR)
   die("deflate: out of memory");
  zlib_post_call(strm);





  if ((strm->avail_out && !strm->z.avail_out) &&
      (status == 129 || status == 130))
   continue;
  break;
 }

 switch (status) {

 case 130:
 case 129:
 case 128:
  return status;
 default:
  break;
 }
 error("deflate: %s (%s)", zerr_to_string(status),
       strm->z.msg ? strm->z.msg : "no message");
 return status;
}
