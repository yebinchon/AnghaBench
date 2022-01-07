
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
typedef int UsersTable ;
struct TYPE_4__ {int topologyOk; int following; int topology; scalar_t__ cpuCount; void* processes2; int userId; int * pidWhiteList; int * usersTable; int processTable; void* processes; } ;
typedef TYPE_1__ ProcessList ;
typedef int ObjectClass ;
typedef int Hashtable ;


 int DEFAULT_SIZE ;
 int Hashtable_new (int,int) ;
 void* Vector_new (int *,int,int ) ;
 int hwloc_topology_init (int *) ;
 int hwloc_topology_load (int ) ;

ProcessList* ProcessList_init(ProcessList* this, ObjectClass* klass, UsersTable* usersTable, Hashtable* pidWhiteList, uid_t userId) {
   this->processes = Vector_new(klass, 1, DEFAULT_SIZE);
   this->processTable = Hashtable_new(140, 0);
   this->usersTable = usersTable;
   this->pidWhiteList = pidWhiteList;
   this->userId = userId;


   this->processes2 = Vector_new(klass, 1, DEFAULT_SIZE);


   this->cpuCount = 0;
   this->following = -1;

   return this;
}
