
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; scalar_t__ type; } ;


 int current_commit_oid ;
 int fprintf (int ,char*,char*,...) ;
 int is_null_oid (int *) ;
 char* oid_to_hex (int *) ;
 int stderr ;
 char* type_name (scalar_t__) ;

__attribute__((used)) static void report_missing(const struct object *obj)
{
 fprintf(stderr, "Cannot obtain needed %s %s\n",
  obj->type ? type_name(obj->type): "object",
  oid_to_hex(&obj->oid));
 if (!is_null_oid(&current_commit_oid))
  fprintf(stderr, "while processing commit %s.\n",
   oid_to_hex(&current_commit_oid));
}
