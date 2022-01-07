
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct commit {int dummy; } ;


 int mark_as_seen (struct object*) ;

__attribute__((used)) static void show_commit(struct commit *commit, void *data)
{
 mark_as_seen((struct object *)commit);
}
