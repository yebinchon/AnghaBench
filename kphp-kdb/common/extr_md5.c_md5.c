
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md5_context ;


 int md5_finish (int *,unsigned char*) ;
 int md5_starts (int *) ;
 int md5_update (int *,unsigned char*,int) ;
 int memset (int *,int ,int) ;

void md5( unsigned char *input, int ilen, unsigned char output[16] )
{
    md5_context ctx;

    md5_starts( &ctx );
    md5_update( &ctx, input, ilen );
    md5_finish( &ctx, output );

    memset( &ctx, 0, sizeof( md5_context ) );
}
