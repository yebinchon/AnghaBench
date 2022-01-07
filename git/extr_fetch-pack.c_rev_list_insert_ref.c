
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct fetch_negotiator {int (* add_tip ) (struct fetch_negotiator*,struct commit*) ;} ;
struct commit {int dummy; } ;


 scalar_t__ OBJ_COMMIT ;
 struct object* deref_tag (int ,int ,char const*,int ) ;
 int parse_object (int ,struct object_id const*) ;
 int stub1 (struct fetch_negotiator*,struct commit*) ;
 int the_repository ;

__attribute__((used)) static int rev_list_insert_ref(struct fetch_negotiator *negotiator,
          const char *refname,
          const struct object_id *oid)
{
 struct object *o = deref_tag(the_repository,
         parse_object(the_repository, oid),
         refname, 0);

 if (o && o->type == OBJ_COMMIT)
  negotiator->add_tip(negotiator, (struct commit *)o);

 return 0;
}
