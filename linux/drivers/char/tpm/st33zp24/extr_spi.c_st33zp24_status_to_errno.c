
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EMSGSIZE ;
 int ENOSYS ;
 int EPROTO ;
__attribute__((used)) static int st33zp24_status_to_errno(u8 code)
{
 switch (code) {
 case 133:
  return 0;
 case 130:
 case 140:
 case 132:
 case 134:
 case 136:
 case 139:
 case 129:
 case 128:
 case 138:
  return -EPROTO;
 case 135:
 case 131:
  return -EMSGSIZE;
 case 137:
  return -ENOSYS;
 }
 return code;
}
