
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asymmetric_key_ids {int * id; } ;
struct asymmetric_key_id {int dummy; } ;


 scalar_t__ asymmetric_key_id_same (int ,struct asymmetric_key_id const*) ;

__attribute__((used)) static bool match_either_id(const struct asymmetric_key_ids *pair,
       const struct asymmetric_key_id *single)
{
 return (asymmetric_key_id_same(pair->id[0], single) ||
  asymmetric_key_id_same(pair->id[1], single));
}
