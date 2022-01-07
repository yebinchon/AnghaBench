
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_cert ;


 int GIT_ECERTIFICATE ;
 int GIT_UNUSED (void*) ;
 int cl_assert_equal_i (int ,int) ;

__attribute__((used)) static int cert_check_assert_invalid(git_cert *cert, int valid, const char* host, void *payload)
{
 GIT_UNUSED(cert); GIT_UNUSED(host); GIT_UNUSED(payload);

 cl_assert_equal_i(0, valid);

 return GIT_ECERTIFICATE;
}
