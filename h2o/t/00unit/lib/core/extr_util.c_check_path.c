
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expected_t {int is_critical; int path; } ;


 int h2o_memis (char const*,size_t,int ,int ) ;
 int ok (int) ;
 int strlen (int ) ;

__attribute__((used)) static void check_path(void *ctx, const char *path, size_t path_len, int is_critical)
{
    struct expected_t **expected = ctx;
    ok(h2o_memis(path, path_len, (*expected)->path, strlen((*expected)->path)));
    ok(is_critical == (*expected)->is_critical);
    ++*expected;
}
