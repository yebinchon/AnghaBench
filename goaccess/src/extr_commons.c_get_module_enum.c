
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* member_0; int member_1; } ;
typedef TYPE_1__ GEnum ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BROWSERS ;
 int GEO_LOCATION ;
 int HOSTS ;
 int KEYPHRASES ;
 int NOT_FOUND ;
 int OS ;
 int REFERRERS ;
 int REFERRING_SITES ;
 int REMOTE_USER ;
 int REQUESTS ;
 int REQUESTS_STATIC ;
 int STATUS_CODES ;
 int VIRTUAL_HOSTS ;
 int VISITORS ;
 int VISIT_TIMES ;
 int str2enum (TYPE_1__*,int ,char const*) ;

int
get_module_enum (const char *str)
{


  GEnum enum_modules[] = {
    {"VISITORS" , VISITORS} ,
    {"REQUESTS" , REQUESTS} ,
    {"REQUESTS_STATIC" , REQUESTS_STATIC} ,
    {"NOT_FOUND" , NOT_FOUND} ,
    {"HOSTS" , HOSTS} ,
    {"OS" , OS} ,
    {"BROWSERS" , BROWSERS} ,
    {"VISIT_TIMES" , VISIT_TIMES} ,
    {"VIRTUAL_HOSTS" , VIRTUAL_HOSTS} ,
    {"REFERRERS" , REFERRERS} ,
    {"REFERRING_SITES" , REFERRING_SITES} ,
    {"KEYPHRASES" , KEYPHRASES} ,
    {"STATUS_CODES" , STATUS_CODES} ,
    {"REMOTE_USER" , REMOTE_USER} ,



  };


  return str2enum (enum_modules, ARRAY_SIZE (enum_modules), str);
}
