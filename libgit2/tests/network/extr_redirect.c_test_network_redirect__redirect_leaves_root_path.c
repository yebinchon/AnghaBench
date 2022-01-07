
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int password; int username; int path; int port; int host; int scheme; } ;


 int cl_assert_equal_p (int ,int *) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 TYPE_1__ conndata ;
 int git_net_url_parse (TYPE_1__*,char*) ;
 int gitno_connection_data_handle_redirect (TYPE_1__*,char*,char*) ;

void test_network_redirect__redirect_leaves_root_path(void)
{
 cl_git_pass(git_net_url_parse(&conndata,
    "https://example.com/foo/bar/baz"));
 cl_git_pass(gitno_connection_data_handle_redirect(&conndata,
    "https://example.com/foo/bar/baz", "/foo/bar/baz"));
 cl_assert_equal_s(conndata.scheme, "https");
 cl_assert_equal_s(conndata.host, "example.com");
 cl_assert_equal_s(conndata.port, "443");
 cl_assert_equal_s(conndata.path, "/");
 cl_assert_equal_p(conndata.username, ((void*)0));
 cl_assert_equal_p(conndata.password, ((void*)0));
}
