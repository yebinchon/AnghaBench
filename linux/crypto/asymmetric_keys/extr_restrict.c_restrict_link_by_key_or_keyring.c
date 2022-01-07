
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union key_payload {int dummy; } key_payload ;
struct key_type {int dummy; } ;
struct key {int dummy; } ;


 int key_or_keyring_common (struct key*,struct key_type const*,union key_payload const*,struct key*,int) ;

int restrict_link_by_key_or_keyring(struct key *dest_keyring,
        const struct key_type *type,
        const union key_payload *payload,
        struct key *trusted)
{
 return key_or_keyring_common(dest_keyring, type, payload, trusted,
         0);
}
