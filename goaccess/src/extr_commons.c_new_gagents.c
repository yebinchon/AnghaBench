
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GAgents ;


 int memset (int *,int ,int) ;
 int * xmalloc (int) ;

GAgents *
new_gagents (void)
{
  GAgents *agents = xmalloc (sizeof (GAgents));
  memset (agents, 0, sizeof *agents);

  return agents;
}
