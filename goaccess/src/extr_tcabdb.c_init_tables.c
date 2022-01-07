
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* metrics; } ;
struct TYPE_4__ {scalar_t__ member_0; scalar_t__ metric; void* dbpath; void* store; int dbname; int * member_3; int * member_2; int member_1; } ;
typedef TYPE_1__ GTCStorageMetric ;
typedef size_t GModule ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DB_AGENTS ;
 int DB_BW ;
 int DB_CUMTS ;
 int DB_DATAMAP ;
 int DB_HITS ;
 int DB_KEYMAP ;
 int DB_MAXTS ;
 int DB_METADATA ;
 int DB_METHODS ;
 int DB_PROTOCOLS ;
 int DB_ROOT ;
 int DB_ROOTMAP ;
 int DB_UNIQMAP ;
 int DB_VISITORS ;
 scalar_t__ MTRC_AGENTS ;
 scalar_t__ MTRC_BW ;
 scalar_t__ MTRC_CUMTS ;
 scalar_t__ MTRC_DATAMAP ;
 scalar_t__ MTRC_HITS ;
 scalar_t__ MTRC_KEYMAP ;
 scalar_t__ MTRC_MAXTS ;
 scalar_t__ MTRC_METADATA ;
 scalar_t__ MTRC_METHODS ;
 scalar_t__ MTRC_PROTOCOLS ;
 scalar_t__ MTRC_ROOT ;
 scalar_t__ MTRC_ROOTMAP ;
 scalar_t__ MTRC_UNIQMAP ;
 scalar_t__ MTRC_VISITORS ;
 void* get_dbname (int ,size_t) ;
 void* tc_adb_create (void*) ;
 void* tc_bdb_create (void*) ;
 void* tc_db_set_path (int ,size_t) ;
 TYPE_2__* tc_storage ;

__attribute__((used)) static void
init_tables (GModule module)
{
  GTCStorageMetric mtrc;
  int n = 0, i;


  GTCStorageMetric metrics[] = {
    {MTRC_KEYMAP , DB_KEYMAP , ((void*)0), ((void*)0)} ,
    {MTRC_ROOTMAP , DB_ROOTMAP , ((void*)0), ((void*)0)} ,
    {MTRC_DATAMAP , DB_DATAMAP , ((void*)0), ((void*)0)} ,
    {MTRC_UNIQMAP , DB_UNIQMAP , ((void*)0), ((void*)0)} ,
    {MTRC_ROOT , DB_ROOT , ((void*)0), ((void*)0)} ,
    {MTRC_HITS , DB_HITS , ((void*)0), ((void*)0)} ,
    {MTRC_VISITORS , DB_VISITORS , ((void*)0), ((void*)0)} ,
    {MTRC_BW , DB_BW , ((void*)0), ((void*)0)} ,
    {MTRC_CUMTS , DB_CUMTS , ((void*)0), ((void*)0)} ,
    {MTRC_MAXTS , DB_MAXTS , ((void*)0), ((void*)0)} ,
    {MTRC_METHODS , DB_METHODS , ((void*)0), ((void*)0)} ,
    {MTRC_PROTOCOLS , DB_PROTOCOLS , ((void*)0), ((void*)0)} ,
    {MTRC_AGENTS , DB_AGENTS , ((void*)0), ((void*)0)} ,
    {MTRC_METADATA , DB_METADATA , ((void*)0), ((void*)0)} ,
  };


  n = ARRAY_SIZE (metrics);
  for (i = 0; i < n; i++) {
    mtrc = metrics[i];
    tc_storage[module].metrics[i] = mtrc;
  }
}
