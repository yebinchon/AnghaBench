
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asymmetric_key_ids {struct asymmetric_key_id const** id; } ;
struct asymmetric_key_id {int dummy; } ;


 int ARRAY_SIZE (struct asymmetric_key_id const**) ;

__attribute__((used)) static bool asymmetric_match_key_ids(
 const struct asymmetric_key_ids *kids,
 const struct asymmetric_key_id *match_id,
 bool (*match)(const struct asymmetric_key_id *kid1,
        const struct asymmetric_key_id *kid2))
{
 int i;

 if (!kids || !match_id)
  return 0;
 for (i = 0; i < ARRAY_SIZE(kids->id); i++)
  if (match(kids->id[i], match_id))
   return 1;
 return 0;
}
