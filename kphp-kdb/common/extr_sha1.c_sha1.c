
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha1_context ;


 int memset (int *,int ,int) ;
 int sha1_finish (int *,unsigned char*) ;
 int sha1_starts (int *) ;
 int sha1_update (int *,unsigned char*,int) ;

void sha1( unsigned char *input, int ilen, unsigned char output[20] )
{
    sha1_context ctx;

    sha1_starts( &ctx );
    sha1_update( &ctx, input, ilen );
    sha1_finish( &ctx, output );

    memset( &ctx, 0, sizeof( sha1_context ) );
}
