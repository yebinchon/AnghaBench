
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER_STARTER_PORT ;
 size_t SIZE_MAX ;
 size_t h2o_server_starter_get_fds (int**) ;
 int ok (int) ;
 int setenv (int ,char*,int) ;
 int unsetenv (int ) ;

__attribute__((used)) static void test_server_starter(void)
{
    int *fds;
    size_t num_fds;

    unsetenv(SERVER_STARTER_PORT);
    num_fds = h2o_server_starter_get_fds(&fds);
    ok(num_fds == 0);

    setenv(SERVER_STARTER_PORT, "0.0.0.0:80=3", 1);
    num_fds = h2o_server_starter_get_fds(&fds);
    ok(num_fds == 1);
    ok(fds[0] == 3);

    setenv(SERVER_STARTER_PORT, "0.0.0.0:80=3;/tmp/foo.sock=4", 1);
    num_fds = h2o_server_starter_get_fds(&fds);
    ok(num_fds == 2);
    ok(fds[0] == 3);
    ok(fds[1] == 4);

    setenv(SERVER_STARTER_PORT, "0.0.0.0:80=foo", 1);
    num_fds = h2o_server_starter_get_fds(&fds);
    ok(num_fds == SIZE_MAX);


    setenv(SERVER_STARTER_PORT, "50908=4", 1);
    num_fds = h2o_server_starter_get_fds(&fds);
    ok(num_fds == 1);
    ok(fds[0] == 4);
}
