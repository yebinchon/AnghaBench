
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_key {int dummy; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {struct tpm_key** data; } ;
struct key {TYPE_1__ payload; } ;


 size_t asym_crypto ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void asym_tpm_describe(const struct key *asymmetric_key,
         struct seq_file *m)
{
 struct tpm_key *tk = asymmetric_key->payload.data[asym_crypto];

 if (!tk)
  return;

 seq_printf(m, "TPM1.2/Blob");
}
