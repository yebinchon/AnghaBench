
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* commondir; } ;


 int BUG (char*) ;
 TYPE_1__* the_repository ;

const char *get_git_common_dir(void)
{
 if (!the_repository->commondir)
  BUG("git environment hasn't been setup");
 return the_repository->commondir;
}
