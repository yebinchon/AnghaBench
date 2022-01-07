
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int strategy; int repo; } ;
typedef TYPE_1__ checkout_data ;


 int GIT_CHECKOUT_DONT_REMOVE_EXISTING ;
 int GIT_CONFIGMAP_IGNORECASE ;
 scalar_t__ git_repository__configmap_lookup (int*,int ,int ) ;

__attribute__((used)) static bool should_remove_existing(checkout_data *data)
{
 int ignorecase;

 if (git_repository__configmap_lookup(&ignorecase, data->repo, GIT_CONFIGMAP_IGNORECASE) < 0) {
  ignorecase = 0;
 }

 return (ignorecase &&
  (data->strategy & GIT_CHECKOUT_DONT_REMOVE_EXISTING) == 0);
}
