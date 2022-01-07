
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha1_context ;
typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (unsigned char*,int,int,int *) ;
 int memset (int *,int ,int) ;
 int sha1_finish (int *,unsigned char*) ;
 int sha1_starts (int *) ;
 int sha1_update (int *,unsigned char*,int) ;

int sha1_file( char *path, unsigned char output[20] )
{
    FILE *f;
    size_t n;
    sha1_context ctx;
    unsigned char buf[1024];

    if( ( f = fopen( path, "rb" ) ) == ((void*)0) )
        return( 1 );

    sha1_starts( &ctx );

    while( ( n = fread( buf, 1, sizeof( buf ), f ) ) > 0 )
        sha1_update( &ctx, buf, (int) n );

    sha1_finish( &ctx, output );

    memset( &ctx, 0, sizeof( sha1_context ) );

    if( ferror( f ) != 0 )
    {
        fclose( f );
        return( 2 );
    }

    fclose( f );
    return( 0 );
}
