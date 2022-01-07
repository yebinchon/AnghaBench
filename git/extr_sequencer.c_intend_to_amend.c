
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int _ (char*) ;
 int error (int ) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 char* oid_to_hex (struct object_id*) ;
 int rebase_path_amend () ;
 int strlen (char*) ;
 int write_message (char*,int ,int ,int) ;

__attribute__((used)) static int intend_to_amend(void)
{
 struct object_id head;
 char *p;

 if (get_oid("HEAD", &head))
  return error(_("cannot read HEAD"));

 p = oid_to_hex(&head);
 return write_message(p, strlen(p), rebase_path_amend(), 1);
}
