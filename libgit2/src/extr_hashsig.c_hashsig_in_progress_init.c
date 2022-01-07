
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int use_ignores; int * ignore_ch; } ;
typedef TYPE_1__ hashsig_in_progress ;
struct TYPE_7__ {int opt; } ;
typedef TYPE_2__ git_hashsig ;


 int GIT_HASHSIG_IGNORE_WHITESPACE ;
 int GIT_HASHSIG_SMART_WHITESPACE ;
 int assert (int) ;
 int git__isspace (int) ;
 int git__isspace_nonlf (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void hashsig_in_progress_init(
 hashsig_in_progress *prog, git_hashsig *sig)
{
 int i;


 assert(!(sig->opt & GIT_HASHSIG_IGNORE_WHITESPACE) ||
     !(sig->opt & GIT_HASHSIG_SMART_WHITESPACE));

 if (sig->opt & GIT_HASHSIG_IGNORE_WHITESPACE) {
  for (i = 0; i < 256; ++i)
   prog->ignore_ch[i] = git__isspace_nonlf(i);
  prog->use_ignores = 1;
 } else if (sig->opt & GIT_HASHSIG_SMART_WHITESPACE) {
  for (i = 0; i < 256; ++i)
   prog->ignore_ch[i] = git__isspace(i);
  prog->use_ignores = 1;
 } else {
  memset(prog, 0, sizeof(*prog));
 }
}
