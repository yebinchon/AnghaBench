
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_http2_casper_t ;


 int H2O_STRLIT (char*) ;
 unsigned int calc_key (int *,int ) ;
 int * h2o_http2_casper_create (int,int) ;
 int h2o_http2_casper_destroy (int *) ;
 int memcpy (unsigned int*,char*,int) ;
 int ok (int) ;

__attribute__((used)) static void test_calc_key(void)
{
    h2o_http2_casper_t *casper = h2o_http2_casper_create(13, 6);

    unsigned key = calc_key(casper, H2O_STRLIT("/index.html")), expected;
    memcpy(&expected, "\x14\xfe\x45\x59", 4);
    expected &= (1 << 13) - 1;
    ok(key == expected);

    h2o_http2_casper_destroy(casper);
}
