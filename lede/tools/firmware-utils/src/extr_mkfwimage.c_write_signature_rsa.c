
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {long pad; int magic; } ;
typedef TYPE_1__ signature_rsa_t ;


 int MAGIC_ENDS ;
 int MAGIC_LENGTH ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void write_signature_rsa(void* mem, u_int32_t sig_offset)
{

 signature_rsa_t* sign = (signature_rsa_t*)(mem + sig_offset);
 memset(sign, 0, sizeof(signature_rsa_t));

 memcpy(sign->magic, MAGIC_ENDS, MAGIC_LENGTH);

 sign->pad = 0L;
}
