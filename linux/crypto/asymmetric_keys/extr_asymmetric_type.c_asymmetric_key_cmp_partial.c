
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_match_data {struct asymmetric_key_id* preparsed; } ;
struct key {int dummy; } ;
struct asymmetric_key_ids {int dummy; } ;
struct asymmetric_key_id {int dummy; } ;


 int asymmetric_key_id_partial ;
 struct asymmetric_key_ids* asymmetric_key_ids (struct key const*) ;
 int asymmetric_match_key_ids (struct asymmetric_key_ids const*,struct asymmetric_key_id const*,int ) ;

__attribute__((used)) static bool asymmetric_key_cmp_partial(const struct key *key,
           const struct key_match_data *match_data)
{
 const struct asymmetric_key_ids *kids = asymmetric_key_ids(key);
 const struct asymmetric_key_id *match_id = match_data->preparsed;

 return asymmetric_match_key_ids(kids, match_id,
     asymmetric_key_id_partial);
}
