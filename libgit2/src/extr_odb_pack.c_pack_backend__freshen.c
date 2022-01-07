
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct pack_backend {int dummy; } ;
struct git_pack_entry {TYPE_1__* p; } ;
typedef int git_oid ;
typedef int git_odb_backend ;
struct TYPE_2__ {scalar_t__ last_freshen; int pack_name; } ;


 scalar_t__ FRESHEN_FREQUENCY ;
 int git_futils_touch (int ,scalar_t__*) ;
 int pack_entry_find (struct git_pack_entry*,struct pack_backend*,int const*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int pack_backend__freshen(
 git_odb_backend *backend, const git_oid *oid)
{
 struct git_pack_entry e;
 time_t now;
 int error;

 if ((error = pack_entry_find(&e, (struct pack_backend *)backend, oid)) < 0)
  return error;

 now = time(((void*)0));

 if (e.p->last_freshen > now - FRESHEN_FREQUENCY)
  return 0;

 if ((error = git_futils_touch(e.p->pack_name, &now)) < 0)
  return error;

 e.p->last_freshen = now;
 return 0;
}
