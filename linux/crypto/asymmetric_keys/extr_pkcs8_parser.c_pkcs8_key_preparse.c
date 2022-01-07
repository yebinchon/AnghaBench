
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct public_key {char* id_type; int owner; int pkey_algo; } ;
struct TYPE_2__ {struct public_key** data; } ;
struct key_preparsed_payload {int quotalen; TYPE_1__ payload; int datalen; int data; } ;


 scalar_t__ IS_ERR (struct public_key*) ;
 int PTR_ERR (struct public_key*) ;
 int __module_get (int ) ;
 size_t asym_auth ;
 size_t asym_crypto ;
 size_t asym_key_ids ;
 size_t asym_subtype ;
 struct public_key* pkcs8_parse (int ,int ) ;
 int pr_devel (char*,int ) ;
 struct public_key public_key_subtype ;

__attribute__((used)) static int pkcs8_key_preparse(struct key_preparsed_payload *prep)
{
 struct public_key *pub;

 pub = pkcs8_parse(prep->data, prep->datalen);
 if (IS_ERR(pub))
  return PTR_ERR(pub);

 pr_devel("Cert Key Algo: %s\n", pub->pkey_algo);
 pub->id_type = "PKCS8";


 __module_get(public_key_subtype.owner);
 prep->payload.data[asym_subtype] = &public_key_subtype;
 prep->payload.data[asym_key_ids] = ((void*)0);
 prep->payload.data[asym_crypto] = pub;
 prep->payload.data[asym_auth] = ((void*)0);
 prep->quotalen = 100;
 return 0;
}
