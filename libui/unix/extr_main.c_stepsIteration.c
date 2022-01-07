
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 int gtk_main_iteration_do (int ) ;
 int stepsQuit ;

__attribute__((used)) static gboolean stepsIteration(gboolean block)
{
 gtk_main_iteration_do(block);
 return stepsQuit;
}
