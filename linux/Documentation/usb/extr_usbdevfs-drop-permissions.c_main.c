
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int O_RDWR ;
 int USBDEVFS_CAP_DROP_PRIVILEGES ;
 int USBDEVFS_GET_CAPABILITIES ;
 int claim_some_intf (int) ;
 int close (int) ;
 int drop_privileges (int,int) ;
 int ioctl (int,int ,int*) ;
 int open (char*,int ) ;
 int printf (char*) ;
 int reset_device (int) ;
 int scanf (char*,int*) ;

int main(int argc, char *argv[])
{
 uint32_t mask, caps;
 int c, fd;

 fd = open(argv[1], O_RDWR);
 if (fd < 0) {
  printf("Failed to open file\n");
  goto err_fd;
 }





 ioctl(fd, USBDEVFS_GET_CAPABILITIES, &caps);
 if (!(caps & USBDEVFS_CAP_DROP_PRIVILEGES)) {
  printf("DROP_PRIVILEGES not supported\n");
  goto err;
 }





 drop_privileges(fd, -1U);

 printf("Available options:\n"
  "[0] Exit now\n"
  "[1] Reset device. Should fail if device is in use\n"
  "[2] Claim 4 interfaces. Should succeed where not in use\n"
  "[3] Narrow interface permission mask\n"
  "Which option shall I run?: ");

 while (scanf("%d", &c) == 1) {
  switch (c) {
  case 0:
   goto exit;
  case 1:
   reset_device(fd);
   break;
  case 2:
   claim_some_intf(fd);
   break;
  case 3:
   printf("Insert new mask: ");
   scanf("%x", &mask);
   drop_privileges(fd, mask);
   break;
  default:
   printf("I don't recognize that\n");
  }

  printf("Which test shall I run next?: ");
 }

exit:
 close(fd);
 return 0;

err:
 close(fd);
err_fd:
 return 1;
}
