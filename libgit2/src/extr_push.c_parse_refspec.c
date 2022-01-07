
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* src; int dst; } ;
struct TYPE_7__ {TYPE_3__ refspec; } ;
typedef TYPE_1__ push_spec ;
typedef int git_push ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_INVALID ;
 scalar_t__ check_lref (int *,char*) ;
 scalar_t__ check_rref (int ) ;
 int free_refspec (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 int git_error_set (int ,char*,char const*) ;
 scalar_t__ git_refspec__parse (TYPE_3__*,char const*,int) ;

__attribute__((used)) static int parse_refspec(git_push *push, push_spec **spec, const char *str)
{
 push_spec *s;

 *spec = ((void*)0);

 s = git__calloc(1, sizeof(*s));
 GIT_ERROR_CHECK_ALLOC(s);

 if (git_refspec__parse(&s->refspec, str, 0) < 0) {
  git_error_set(GIT_ERROR_INVALID, "invalid refspec %s", str);
  goto on_error;
 }

 if (s->refspec.src && s->refspec.src[0] != '\0' &&
     check_lref(push, s->refspec.src) < 0) {
  goto on_error;
 }

 if (check_rref(s->refspec.dst) < 0)
  goto on_error;

 *spec = s;
 return 0;

on_error:
 free_refspec(s);
 return -1;
}
