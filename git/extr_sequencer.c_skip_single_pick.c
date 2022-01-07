
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int _ (char*) ;
 int error (int ) ;
 scalar_t__ read_ref_full (char*,int ,struct object_id*,int *) ;
 int reset_merge (struct object_id*) ;

__attribute__((used)) static int skip_single_pick(void)
{
 struct object_id head;

 if (read_ref_full("HEAD", 0, &head, ((void*)0)))
  return error(_("cannot resolve HEAD"));
 return reset_merge(&head);
}
