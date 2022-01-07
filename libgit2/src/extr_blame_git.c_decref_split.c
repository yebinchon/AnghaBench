
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int suspect; } ;
typedef TYPE_1__ git_blame__entry ;


 int origin_decref (int ) ;

__attribute__((used)) static void decref_split(git_blame__entry *split)
{
 int i;
 for (i=0; i<3; i++)
  origin_decref(split[i].suspect);
}
