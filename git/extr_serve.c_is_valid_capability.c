
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protocol_capability {scalar_t__ (* advertise ) (int ,int *) ;} ;


 struct protocol_capability* get_capability (char const*) ;
 scalar_t__ stub1 (int ,int *) ;
 int the_repository ;

__attribute__((used)) static int is_valid_capability(const char *key)
{
 const struct protocol_capability *c = get_capability(key);

 return c && c->advertise(the_repository, ((void*)0));
}
