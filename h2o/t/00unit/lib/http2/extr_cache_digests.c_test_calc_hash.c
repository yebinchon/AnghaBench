
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H2O_STRLIT (char*) ;
 int calc_hash (int ,int ) ;
 int ok (int) ;

__attribute__((used)) static void test_calc_hash(void)
{
    ok(calc_hash(H2O_STRLIT("https://example.com/style.css"), H2O_STRLIT("")) == 0xbaf9e86f03330860);
    ok(calc_hash(H2O_STRLIT("https://example.com/style.css"), H2O_STRLIT("\"deadbeef\"")) == 0xa53eb398509042d7);
}
