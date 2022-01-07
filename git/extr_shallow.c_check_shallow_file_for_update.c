
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct TYPE_2__ {int is_shallow; int shallow_stat; } ;


 int BUG (char*) ;
 int die (char*) ;
 int git_path_shallow (struct repository*) ;
 int stat_validity_check (int ,int ) ;

__attribute__((used)) static void check_shallow_file_for_update(struct repository *r)
{
 if (r->parsed_objects->is_shallow == -1)
  BUG("shallow must be initialized by now");

 if (!stat_validity_check(r->parsed_objects->shallow_stat,
     git_path_shallow(r)))
  die("shallow file has changed since we read it");
}
