
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct vio_msg_tag {int stype_env; void* stype; void* type; } ;



__attribute__((used)) static void init_tag(struct vio_msg_tag *tag, u8 type, u8 stype, u16 stype_env)
{
 tag->type = type;
 tag->stype = stype;
 tag->stype_env = stype_env;
}
