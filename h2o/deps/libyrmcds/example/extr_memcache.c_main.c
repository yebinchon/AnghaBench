
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_response ;
typedef int yrmcds ;


 int check_error (int ) ;
 int check_response (int *) ;
 int yrmcds_close (int *) ;
 int yrmcds_connect (int *,char*,int) ;
 int yrmcds_noop (int *,int *) ;
 int yrmcds_recv (int *,int *) ;

int main(int argc, char** argv) {
    yrmcds c;
    yrmcds_response r;

    check_error( yrmcds_connect(&c, "localhost", 11211) );
    check_error( yrmcds_noop(&c, ((void*)0)) );
    check_error( yrmcds_recv(&c, &r) );
    check_response(&r);
    check_error( yrmcds_close(&c) );

    return 0;
}
