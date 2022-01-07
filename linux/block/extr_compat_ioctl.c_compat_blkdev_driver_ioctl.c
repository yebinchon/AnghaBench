
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;
 int ENOIOCTLCMD ;
 int __blkdev_driver_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 int compat_cdrom_generic_command (struct block_device*,int ,unsigned int,unsigned long) ;
 int compat_cdrom_read_audio (struct block_device*,int ,unsigned int,unsigned long) ;
 int compat_hdio_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;
 scalar_t__ compat_ptr (unsigned long) ;

__attribute__((used)) static int compat_blkdev_driver_ioctl(struct block_device *bdev, fmode_t mode,
   unsigned cmd, unsigned long arg)
{
 switch (cmd) {
 case 141:
 case 144:
 case 145:
 case 151:
 case 142:
 case 147:
 case 143:
 case 140:
 case 150:
 case 149:
 case 148:
  return compat_hdio_ioctl(bdev, mode, cmd, arg);
 case 184:
  return compat_cdrom_read_audio(bdev, mode, cmd, arg);
 case 158:
  return compat_cdrom_generic_command(bdev, mode, cmd, arg);





 case 194:




 case 146:
 case 152:
 case 153:

 case 0x330:

 case 189:
 case 176:
 case 187:
 case 186:
 case 178:
 case 179:
 case 173:
 case 174:
 case 192:
 case 171:
 case 172:
 case 190:
 case 163:
 case 177:
 case 170:
 case 175:
 case 188:
 case 193:
 case 166:
 case 169:
 case 164:




 case 181:
 case 182:
 case 180:
 case 183:
 case 185:

 case 155:
 case 154:
 case 156:
  arg = (unsigned long)compat_ptr(arg);


 case 133:
 case 129:
 case 134:
 case 139:
 case 131:
 case 135:
 case 130:
 case 132:
 case 128:
 case 138:
 case 136:
 case 137:
 case 191:
 case 157:
 case 168:
 case 159:
 case 160:
 case 161:
 case 165:
 case 162:
 case 167:
  break;
 default:

  return -ENOIOCTLCMD;
 }

 return __blkdev_driver_ioctl(bdev, mode, cmd, arg);
}
