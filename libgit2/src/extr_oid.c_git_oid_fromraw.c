
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ git_oid ;


 int memcpy (int ,unsigned char const*,int) ;

void git_oid_fromraw(git_oid *out, const unsigned char *raw)
{
 memcpy(out->id, raw, sizeof(out->id));
}
