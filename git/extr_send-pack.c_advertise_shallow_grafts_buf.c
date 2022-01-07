
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int advertise_shallow_grafts_cb ;
 int for_each_commit_graft (int ,struct strbuf*) ;
 int is_repository_shallow (int ) ;
 int the_repository ;

__attribute__((used)) static void advertise_shallow_grafts_buf(struct strbuf *sb)
{
 if (!is_repository_shallow(the_repository))
  return;
 for_each_commit_graft(advertise_shallow_grafts_cb, sb);
}
