
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int defined; } ;
typedef TYPE_1__* Symbol ;


 scalar_t__ PARAM ;
 int assert (TYPE_1__**) ;
 int error (char*) ;
 int exitscope () ;
 scalar_t__ level ;

__attribute__((used)) static void exitparams(Symbol params[]) {
 assert(params);
 if (params[0] && !params[0]->defined)
  error("extraneous old-style parameter list\n");
 if (level > PARAM)
  exitscope();
 exitscope();
}
