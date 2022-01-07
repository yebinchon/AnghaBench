
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_cnt_response ;
typedef int yrmcds_cnt ;


 int check_error (int ) ;
 int check_response (int *) ;
 int yrmcds_cnt_close (int *) ;
 int yrmcds_cnt_connect (int *,char*,int) ;
 int yrmcds_cnt_noop (int *,int *) ;
 int yrmcds_cnt_recv (int *,int *) ;

int main(void) {
    yrmcds_cnt c;
    yrmcds_cnt_response r;

    check_error( yrmcds_cnt_connect(&c, "localhost", 11215) );
    check_error( yrmcds_cnt_noop(&c, ((void*)0)) );
    check_error( yrmcds_cnt_recv(&c, &r) );
    check_response(&r);
    check_error( yrmcds_cnt_close(&c) );

    return 0;
}
