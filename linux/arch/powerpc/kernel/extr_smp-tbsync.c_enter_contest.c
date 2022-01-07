
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {long race_result; } ;


 scalar_t__ get_tb () ;
 TYPE_1__* tbsync ;

__attribute__((used)) static void enter_contest(u64 mark, long add)
{
 while (get_tb() < mark)
  tbsync->race_result = add;
}
