
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct passwd {int pw_name; } ;
struct TYPE_3__ {int users; } ;
typedef TYPE_1__ UsersTable ;


 scalar_t__ Hashtable_get (int ,unsigned int) ;
 int Hashtable_put (int ,unsigned int,char*) ;
 struct passwd* getpwuid (unsigned int) ;
 char* xStrdup (int ) ;

char* UsersTable_getRef(UsersTable* this, unsigned int uid) {
   char* name = (char*) (Hashtable_get(this->users, uid));
   if (name == ((void*)0)) {
      struct passwd* userData = getpwuid(uid);
      if (userData != ((void*)0)) {
         name = xStrdup(userData->pw_name);
         Hashtable_put(this->users, uid, name);
      }
   }
   return name;
}
