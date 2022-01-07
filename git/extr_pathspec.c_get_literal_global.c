
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_LITERAL_PATHSPECS_ENVIRONMENT ;
 int git_env_bool (int ,int ) ;

__attribute__((used)) static inline int get_literal_global(void)
{
 static int literal = -1;

 if (literal < 0)
  literal = git_env_bool(GIT_LITERAL_PATHSPECS_ENVIRONMENT, 0);

 return literal;
}
