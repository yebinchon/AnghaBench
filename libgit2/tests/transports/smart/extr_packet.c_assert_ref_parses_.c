
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int oid; } ;
struct TYPE_4__ {int capabilities; TYPE_1__ head; int type; } ;
typedef TYPE_2__ git_pkt_ref ;
typedef int git_pkt ;
typedef int git_oid ;


 int GIT_PKT_REF ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_p (int *,int ) ;
 int cl_assert_equal_strn (int ,char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_pkt_free (int *) ;
 int git_pkt_parse_line (int **,char const**,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_ref_parses_(const char *line, size_t linelen, const char *expected_oid,
 const char *expected_ref, const char *expected_capabilities)
{
 const char *endptr;
 git_pkt_ref *pkt;
 git_oid oid;

 cl_git_pass(git_oid_fromstr(&oid, expected_oid));

 cl_git_pass(git_pkt_parse_line((git_pkt **) &pkt, &endptr, line, linelen));
 cl_assert_equal_i(pkt->type, GIT_PKT_REF);
 cl_assert_equal_oid(&pkt->head.oid, &oid);
 cl_assert_equal_strn(pkt->head.name, expected_ref, strlen(expected_ref));
 if (expected_capabilities)
  cl_assert_equal_strn(pkt->capabilities, expected_capabilities, strlen(expected_capabilities));
 else
  cl_assert_equal_p(((void*)0), pkt->capabilities);

 git_pkt_free((git_pkt *) pkt);
}
