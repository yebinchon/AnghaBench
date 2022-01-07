
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t loader_command ;
 int DBG_ERR ;
 int DBG_LOAD ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int KERN_ERR ;
 int PRINTD (int,char*,int,int) ;
 int PRINTK (int ,char*,char const*) ;
 int* command_successes ;

__attribute__((used)) static int decode_loader_result (loader_command cmd, u32 result)
{
 int res;
 const char *msg;

 if (result == command_successes[cmd])
  return 0;

 switch (result) {
  case 139:
   res = -EINVAL;
   msg = "bad command";
   break;
  case 135:
   res = -ETIMEDOUT;
   msg = "command in progress";
   break;
  case 134:
   res = 0;
   msg = "command passed test";
   break;
  case 137:
   res = -EIO;
   msg = "command failed test";
   break;
  case 132:
   res = 0;
   msg = "command read data ok";
   break;
  case 133:
   res = -EINVAL;
   msg = "command read bad address";
   break;
  case 129:
   res = 0;
   msg = "command write data ok";
   break;
  case 131:
   res = -EINVAL;
   msg = "command write bad address";
   break;
  case 128:
   res = -EIO;
   msg = "command write flash failure";
   break;
  case 138:
   res = 0;
   msg = "command complete";
   break;
  case 136:
   res = -EIO;
   msg = "command flash erase failure";
   break;
  case 130:
   res = -EINVAL;
   msg = "command write bad data";
   break;
  default:
   res = -EINVAL;
   msg = "unknown error";
   PRINTD (DBG_LOAD|DBG_ERR,
    "decode_loader_result got %d=%x !",
    result, result);
   break;
 }

 PRINTK (KERN_ERR, "%s", msg);
 return res;
}
