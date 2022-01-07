
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int password; int username; int path; int port; int host; int scheme; } ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 TYPE_1__ conndata ;
 int git_net_url_is_default_port (TYPE_1__*) ;
 int git_net_url_parse (TYPE_1__*,char*) ;

void test_network_urlparse__encoded_password(void)
{
 cl_git_pass(git_net_url_parse(&conndata,
    "https://user:pass%2fis%40bad@hostname.com:1234/"));
 cl_assert_equal_s(conndata.scheme, "https");
 cl_assert_equal_s(conndata.host, "hostname.com");
 cl_assert_equal_s(conndata.port, "1234");
 cl_assert_equal_s(conndata.path, "/");
 cl_assert_equal_s(conndata.username, "user");
 cl_assert_equal_s(conndata.password, "pass/is@bad");
 cl_assert_equal_i(git_net_url_is_default_port(&conndata), 0);
}
