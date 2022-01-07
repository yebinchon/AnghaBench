
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_key {int owner; } ;
struct TYPE_2__ {struct tpm_key** data; } ;
struct key_preparsed_payload {int datalen; int quotalen; TYPE_1__ payload; int data; } ;


 int EMSGSIZE ;
 scalar_t__ IS_ERR (struct tpm_key*) ;
 int PTR_ERR (struct tpm_key*) ;
 int __module_get (int ) ;
 size_t asym_auth ;
 size_t asym_crypto ;
 size_t asym_key_ids ;
 size_t asym_subtype ;
 struct tpm_key asym_tpm_subtype ;
 struct tpm_key* tpm_parse (int ,int) ;

__attribute__((used)) static int tpm_key_preparse(struct key_preparsed_payload *prep)
{
 struct tpm_key *tk;





 if (prep->datalen > 256 * 4)
  return -EMSGSIZE;

 tk = tpm_parse(prep->data, prep->datalen);

 if (IS_ERR(tk))
  return PTR_ERR(tk);


 __module_get(asym_tpm_subtype.owner);
 prep->payload.data[asym_subtype] = &asym_tpm_subtype;
 prep->payload.data[asym_key_ids] = ((void*)0);
 prep->payload.data[asym_crypto] = tk;
 prep->payload.data[asym_auth] = ((void*)0);
 prep->quotalen = 100;
 return 0;
}
