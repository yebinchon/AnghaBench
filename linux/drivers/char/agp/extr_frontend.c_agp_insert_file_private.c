
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_file_private {struct agp_file_private* next; struct agp_file_private* prev; } ;
struct TYPE_2__ {struct agp_file_private* file_priv_list; } ;


 TYPE_1__ agp_fe ;

__attribute__((used)) static void agp_insert_file_private(struct agp_file_private * priv)
{
 struct agp_file_private *prev;

 prev = agp_fe.file_priv_list;

 if (prev != ((void*)0))
  prev->prev = priv;
 priv->next = prev;
 agp_fe.file_priv_list = priv;
}
