
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * par; } ;
struct TYPE_6__ {TYPE_1__ args; int request; } ;
typedef TYPE_2__ command ;


 int DBG_CMD ;
 int PRINTDB (int ,char*,TYPE_2__*,int ) ;
 int PRINTDE (int ,char*) ;
 int PRINTDM (int ,char*,int ) ;

__attribute__((used)) static inline void dump_command (command * cmd) {
  (void) cmd;

  return;
}
