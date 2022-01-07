
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sigset_t_ ;
struct TYPE_2__ {int has_saved_mask; int blocked; int saved_mask; } ;


 TYPE_1__* current ;
 int sigmask_set (int ) ;

__attribute__((used)) static void sigmask_set_temp_unlocked(sigset_t_ mask) {
    current->saved_mask = current->blocked;
    current->has_saved_mask = 1;
    sigmask_set(mask);
}
