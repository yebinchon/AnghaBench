
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int UsersTable ;
typedef int ProcessList ;
typedef int Hashtable ;


 int Class (int ) ;
 int Process ;
 int ProcessList_init (int *,int ,int *,int *,int ) ;
 int * xCalloc (int,int) ;

ProcessList* ProcessList_new(UsersTable* usersTable, Hashtable* pidWhiteList, uid_t userId) {
   ProcessList* this = xCalloc(1, sizeof(ProcessList));
   ProcessList_init(this, Class(Process), usersTable, pidWhiteList, userId);

   return this;
}
