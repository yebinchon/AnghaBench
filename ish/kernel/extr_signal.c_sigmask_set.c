
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sigset_t_ ;
struct TYPE_2__ {int blocked; } ;


 int UNBLOCKABLE_MASK ;
 TYPE_1__* current ;

__attribute__((used)) static void sigmask_set(sigset_t_ set) {
    current->blocked = (set & ~UNBLOCKABLE_MASK);
}
