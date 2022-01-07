
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct public_key {int pkey_algo; int id_type; } ;
struct TYPE_2__ {struct public_key** data; } ;
struct key {TYPE_1__ payload; } ;


 size_t asym_crypto ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static void public_key_describe(const struct key *asymmetric_key,
    struct seq_file *m)
{
 struct public_key *key = asymmetric_key->payload.data[asym_crypto];

 if (key)
  seq_printf(m, "%s.%s", key->id_type, key->pkey_algo);
}
