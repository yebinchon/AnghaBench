
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protocol_capability {int name; } ;


 int ARRAY_SIZE (struct protocol_capability*) ;
 struct protocol_capability* capabilities ;
 scalar_t__ skip_prefix (char const*,int ,char const**) ;

__attribute__((used)) static struct protocol_capability *get_capability(const char *key)
{
 int i;

 if (!key)
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(capabilities); i++) {
  struct protocol_capability *c = &capabilities[i];
  const char *out;
  if (skip_prefix(key, c->name, &out) && (!*out || *out == '='))
   return c;
 }

 return ((void*)0);
}
