
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int uchar ;
typedef int sha1_context ;


 int sha1_finish (int *,int *) ;
 int sha1_starts (int *) ;
 int sha1_update (int *,int *,int ) ;

void sha1_csum( uchar *buf, uint buflen, uchar digest[20] )
{
    sha1_context ctx;

    sha1_starts( &ctx );
    sha1_update( &ctx, buf, buflen );
    sha1_finish( &ctx, digest );
}
