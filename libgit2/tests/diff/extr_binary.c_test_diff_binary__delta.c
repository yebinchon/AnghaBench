
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_index ;
struct TYPE_8__ {int flags; int id_abbrev; } ;
typedef TYPE_1__ git_diff_options ;
struct TYPE_9__ {int size; int * ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_DIFF_FORCE_BINARY ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_SHOW_BINARY ;
 int GIT_OID_HEXSZ ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,int *) ;
 int cl_git_sandbox_init (char*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_futils_readbuffer (TYPE_2__*,char*) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int ) ;
 int memcpy (int *,char*,int) ;
 int repo ;
 scalar_t__ strncmp (int *,char*,int) ;
 int test_patch (char*,int *,TYPE_1__*,char const*) ;

void test_diff_binary__delta(void)
{
 git_index *index;
 git_buf contents = GIT_BUF_INIT;
 size_t i;
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 const char *expected =
  "diff --git a/songof7cities.txt b/songof7cities.txt\n" "index 4210ffd5c390b21dd5483375e75288dea9ede512..cc84ec183351c9944ed90a619ca08911924055b5 100644\n" "GIT binary patch\n" "delta 198\n" "zc$}LmI8{(0BqLQJI6p64AwNwaIJGP_Pa)Ye#M3o+qJ$<Jl;sX*mF<MGCYv&*L7AHu\n" "zGA1*^gt?gYVN82wTbPO_W)+x<&1+cP;HrPHR>PQ;Y(X&QMK*C5^Br3bjG4d=XI^5@\n" "JfH567LIG)KJdFSV\n" "\n" "delta 198\n" "zc$}LmI8{(0BqLQJI6p64AwNwaIJGP_Pr*5}Br~;mqJ$<Jl;sX*mF<MGCYv&*L7AHu\n" "zGA1*^gt?gYVN82wTbPO_W)+x<&1+cP;HrPHR>PQ;Y(X&QMK*C5^Br3bjG4d=XI^5@\n" "JfH567LIF3FM2!Fd\n" "\n";
 opts.flags = GIT_DIFF_SHOW_BINARY | GIT_DIFF_FORCE_BINARY;
 opts.id_abbrev = GIT_OID_HEXSZ;

 repo = cl_git_sandbox_init("renames");
 cl_git_pass(git_repository_index(&index, repo));

 cl_git_pass(git_futils_readbuffer(&contents, "renames/songof7cities.txt"));

 for (i = 0; i < contents.size - 6; i++) {
  if (strncmp(&contents.ptr[i], "Cities", 6) == 0)
   memcpy(&contents.ptr[i], "cITIES", 6);
 }

 cl_git_rewritefile("renames/songof7cities.txt", contents.ptr);
 cl_git_pass(git_index_add_bypath(index, "songof7cities.txt"));
 cl_git_pass(git_index_write(index));

 test_patch(
  "19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13",
  ((void*)0),
  &opts,
  expected);

 git_index_free(index);
 git_buf_dispose(&contents);
}
