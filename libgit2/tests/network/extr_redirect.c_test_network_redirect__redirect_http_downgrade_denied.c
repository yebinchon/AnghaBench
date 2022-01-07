
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_fail_with (int ,int) ;
 int cl_git_pass (int ) ;
 int conndata ;
 int git_net_url_parse (int *,char*) ;
 int gitno_connection_data_handle_redirect (int *,char*,int *) ;

void test_network_redirect__redirect_http_downgrade_denied(void)
{
 cl_git_pass(git_net_url_parse(&conndata, "https://foo.com/bar/baz"));
 cl_git_fail_with(gitno_connection_data_handle_redirect(&conndata,
    "http://foo.com/bar/baz", ((void*)0)),
   -1);
}
