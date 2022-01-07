
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int offset; int time; } ;
struct TYPE_8__ {TYPE_1__ when; int email; int name; } ;
typedef TYPE_2__ git_signature ;


 int cl_assert (TYPE_2__*) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 TYPE_2__* git__calloc (int,int) ;
 int git_signature__parse (TYPE_2__*,char const**,char const*,int *,char) ;
 int git_signature_free (TYPE_2__*) ;
 int strlen (char const*) ;

void test_commit_signature__timezone_does_not_read_oob(void)
{
 const char *header = "A <a@example.com> 1461698487 +1234", *header_end;
 git_signature *sig;


 header_end = header + strlen(header) - 2;

 sig = git__calloc(1, sizeof(git_signature));
 cl_assert(sig);

 cl_git_pass(git_signature__parse(sig, &header, header_end, ((void*)0), '\0'));
 cl_assert_equal_s(sig->name, "A");
 cl_assert_equal_s(sig->email, "a@example.com");
 cl_assert_equal_i(sig->when.time, 1461698487);
 cl_assert_equal_i(sig->when.offset, 12);

 git_signature_free(sig);
}
