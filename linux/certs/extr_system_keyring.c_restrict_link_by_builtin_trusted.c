
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union key_payload {int dummy; } key_payload ;
struct key_type {int dummy; } ;
struct key {int dummy; } ;


 int builtin_trusted_keys ;
 int restrict_link_by_signature (struct key*,struct key_type const*,union key_payload const*,int ) ;

int restrict_link_by_builtin_trusted(struct key *dest_keyring,
         const struct key_type *type,
         const union key_payload *payload,
         struct key *restriction_key)
{
 return restrict_link_by_signature(dest_keyring, type, payload,
       builtin_trusted_keys);
}
