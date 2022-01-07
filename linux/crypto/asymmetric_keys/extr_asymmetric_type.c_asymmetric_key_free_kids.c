
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asymmetric_key_ids {struct asymmetric_key_ids** id; } ;


 int ARRAY_SIZE (struct asymmetric_key_ids**) ;
 int kfree (struct asymmetric_key_ids*) ;

__attribute__((used)) static void asymmetric_key_free_kids(struct asymmetric_key_ids *kids)
{
 int i;

 if (kids) {
  for (i = 0; i < ARRAY_SIZE(kids->id); i++)
   kfree(kids->id[i]);
  kfree(kids);
 }
}
