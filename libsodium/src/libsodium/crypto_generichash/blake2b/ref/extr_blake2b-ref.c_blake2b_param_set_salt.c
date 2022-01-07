
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int salt; } ;
typedef TYPE_1__ blake2b_param ;


 int BLAKE2B_SALTBYTES ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static inline int
blake2b_param_set_salt(blake2b_param *P, const uint8_t salt[BLAKE2B_SALTBYTES])
{
    memcpy(P->salt, salt, BLAKE2B_SALTBYTES);
    return 0;
}
