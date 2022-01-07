
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int bytes; } ;
typedef TYPE_1__ h2o_buffer_t ;


 int H2O_STRLIT (char*) ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int h2o_buffer_dispose (TYPE_1__**) ;
 int h2o_memis (int ,int ,int ) ;
 int h2o_read_command (char*,char**,TYPE_1__**,int*) ;
 int ok (int) ;
 int setenv (char*,char*,int) ;
 int unsetenv (char*) ;

__attribute__((used)) static void test_read_command(void)
{
    char *argv[] = {"t/00unit/assets/read_command.pl", "hello", ((void*)0)};
    h2o_buffer_t *resp;
    int ret, status;


    ret = h2o_read_command(argv[0], argv, &resp, &status);
    ok(ret == 0);
    if (ret == 0) {
        ok(WIFEXITED(status));
        ok(WEXITSTATUS(status) == 0);
        ok(h2o_memis(resp->bytes, resp->size, H2O_STRLIT("hello")));
        h2o_buffer_dispose(&resp);
    }


    setenv("READ_COMMAND_EXIT_STATUS", "75", 1);
    ret = h2o_read_command(argv[0], argv, &resp, &status);
    ok(ret == 0);
    if (ret == 0) {
        ok(WIFEXITED(status));
        ok(WEXITSTATUS(status) == 75);
        ok(h2o_memis(resp->bytes, resp->size, H2O_STRLIT("hello")));
        h2o_buffer_dispose(&resp);
    }
    unsetenv("READ_COMMAND_EXIT_STATUS");


    argv[0] = "t/00unit/assets";
    ret = h2o_read_command(argv[0], argv, &resp, &status);
    ok(ret != 0 || (ret == 0 && WIFEXITED(status) && WEXITSTATUS(status) == 127));
}
