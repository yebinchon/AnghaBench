
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int users; } ;
typedef TYPE_1__ UsersTable ;


 int Hashtable_new (int,int) ;
 TYPE_1__* xMalloc (int) ;

UsersTable* UsersTable_new() {
   UsersTable* this;
   this = xMalloc(sizeof(UsersTable));
   this->users = Hashtable_new(20, 1);
   return this;
}
