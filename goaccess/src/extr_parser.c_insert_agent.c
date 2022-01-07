
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int ht_insert_agent (int ,int,int) ;

__attribute__((used)) static void
insert_agent (int data_nkey, int agent_nkey, GModule module)
{
  ht_insert_agent (module, data_nkey, agent_nkey);
}
