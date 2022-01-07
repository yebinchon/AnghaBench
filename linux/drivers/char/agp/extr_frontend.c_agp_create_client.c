
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_client {int pid; } ;
typedef int pid_t ;


 int GFP_KERNEL ;
 int agp_insert_client (struct agp_client*) ;
 struct agp_client* kzalloc (int,int ) ;

struct agp_client *agp_create_client(pid_t id)
{
 struct agp_client *new_client;

 new_client = kzalloc(sizeof(struct agp_client), GFP_KERNEL);
 if (new_client == ((void*)0))
  return ((void*)0);

 new_client->pid = id;
 agp_insert_client(new_client);
 return new_client;
}
