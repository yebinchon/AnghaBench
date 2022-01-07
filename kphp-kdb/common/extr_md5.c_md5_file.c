
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md5_context ;
typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (unsigned char*,int,int,int *) ;
 int md5_finish (int *,unsigned char*) ;
 int md5_starts (int *) ;
 int md5_update (int *,unsigned char*,int) ;
 int memset (int *,int ,int) ;

int md5_file( char *path, unsigned char output[16] )
{
    FILE *f;
    size_t n;
    md5_context ctx;
    unsigned char buf[1024];

    if( ( f = fopen( path, "rb" ) ) == ((void*)0) )
        return( 1 );

    md5_starts( &ctx );

    while( ( n = fread( buf, 1, sizeof( buf ), f ) ) > 0 )
        md5_update( &ctx, buf, (int) n );

    md5_finish( &ctx, output );

    memset( &ctx, 0, sizeof( md5_context ) );

    if( ferror( f ) != 0 )
    {
        fclose( f );
        return( 2 );
    }

    fclose( f );
    return( 0 );
}
