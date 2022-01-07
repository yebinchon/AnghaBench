
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct asymmetric_key_ids** data; } ;
struct key {TYPE_1__ payload; } ;
struct asymmetric_key_subtype {int owner; int (* destroy ) (void*,void*) ;} ;
struct asymmetric_key_ids {int dummy; } ;


 size_t asym_auth ;
 size_t asym_crypto ;
 size_t asym_key_ids ;
 size_t asym_subtype ;
 int asymmetric_key_free_kids (struct asymmetric_key_ids*) ;
 struct asymmetric_key_subtype* asymmetric_key_subtype (struct key*) ;
 int module_put (int ) ;
 int stub1 (void*,void*) ;

__attribute__((used)) static void asymmetric_key_destroy(struct key *key)
{
 struct asymmetric_key_subtype *subtype = asymmetric_key_subtype(key);
 struct asymmetric_key_ids *kids = key->payload.data[asym_key_ids];
 void *data = key->payload.data[asym_crypto];
 void *auth = key->payload.data[asym_auth];

 key->payload.data[asym_crypto] = ((void*)0);
 key->payload.data[asym_subtype] = ((void*)0);
 key->payload.data[asym_key_ids] = ((void*)0);
 key->payload.data[asym_auth] = ((void*)0);

 if (subtype) {
  subtype->destroy(data, auth);
  module_put(subtype->owner);
 }

 asymmetric_key_free_kids(kids);
}
