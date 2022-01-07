
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ARGS ;
 int O_RDONLY ;
 scalar_t__ buflen ;
 int do_reboot () ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int image_check (int,char*) ;
 char* imagefile ;
 void* jffs2_skip_bytes ;
 void* jffs2dir ;
 void* jffs2file ;
 int mtd_check (char*) ;
 int mtd_dump (char*,size_t,size_t) ;
 int mtd_erase (char*) ;
 int mtd_fixseama (char*,int ,size_t) ;
 int mtd_fixtrx (char*,size_t,size_t) ;
 int mtd_fixwrg (char*,int ,size_t) ;
 int mtd_fixwrgg (char*,int ,size_t) ;
 int mtd_resetbc (char*) ;
 int mtd_unlock (char*) ;
 int mtd_verify (char*,char*) ;
 int mtd_write (int,char*,char*,size_t) ;
 int mtd_write_jffs2 (char*,char*,void*) ;
 int no_erase ;
 int open (char*,int ) ;
 void* optarg ;
 scalar_t__ optind ;
 scalar_t__ quiet ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 void* strtoul (void*,int ,int ) ;
 int sync () ;
 int usage () ;

int main (int argc, char **argv)
{
 int ch, i, boot, imagefd = 0, force, unlocked;
 char *erase[MAX_ARGS], *device = ((void*)0);
 char *fis_layout = ((void*)0);
 size_t offset = 0, data_size = 0, part_offset = 0, dump_len = 0;
 enum {
  CMD_ERASE,
  CMD_WRITE,
  CMD_UNLOCK,
  CMD_JFFS2WRITE,
  CMD_FIXTRX,
  CMD_FIXSEAMA,
  CMD_FIXWRG,
  CMD_FIXWRGG,
  CMD_VERIFY,
  CMD_DUMP,
  CMD_RESETBC,
 } cmd = -1;

 erase[0] = ((void*)0);
 boot = 0;
 force = 0;
 buflen = 0;
 quiet = 0;
 no_erase = 0;

 while ((ch = getopt(argc, argv,



   "frnqe:d:s:j:p:o:c:l:")) != -1)
  switch (ch) {
   case 'f':
    force = 1;
    break;
   case 'r':
    boot = 1;
    break;
   case 'n':
    no_erase = 1;
    break;
   case 'j':
    jffs2file = optarg;
    break;
   case 's':
    errno = 0;
    jffs2_skip_bytes = strtoul(optarg, 0, 0);
    if (errno) {
      fprintf(stderr, "-s: illegal numeric string\n");
      usage();
    }
    break;
   case 'q':
    quiet++;
    break;
   case 'e':
    i = 0;
    while ((erase[i] != ((void*)0)) && ((i + 1) < MAX_ARGS))
     i++;

    erase[i++] = optarg;
    erase[i] = ((void*)0);
    break;
   case 'd':
    jffs2dir = optarg;
    break;
   case 'p':
    errno = 0;
    part_offset = strtoul(optarg, 0, 0);
    if (errno) {
     fprintf(stderr, "-p: illegal numeric string\n");
     usage();
    }
    break;
   case 'l':
    errno = 0;
    dump_len = strtoul(optarg, 0, 0);
    if (errno) {
     fprintf(stderr, "-l: illegal numeric string\n");
     usage();
    }
    break;
   case 'o':
    errno = 0;
    offset = strtoul(optarg, 0, 0);
    if (errno) {
     fprintf(stderr, "-o: illegal numeric string\n");
     usage();
    }
    break;
   case 'c':
    errno = 0;
    data_size = strtoul(optarg, 0, 0);
    if (errno) {
     fprintf(stderr, "-c: illegal numeric string\n");
     usage();
    }
    break;





   case '?':
   default:
    usage();
  }
 argc -= optind;
 argv += optind;

 if (argc < 2)
  usage();

 if ((strcmp(argv[0], "unlock") == 0) && (argc == 2)) {
  cmd = CMD_UNLOCK;
  device = argv[1];
 } else if ((strcmp(argv[0], "erase") == 0) && (argc == 2)) {
  cmd = CMD_ERASE;
  device = argv[1];
 } else if (((strcmp(argv[0], "resetbc") == 0) && (argc == 2)) && mtd_resetbc) {
  cmd = CMD_RESETBC;
  device = argv[1];
 } else if (((strcmp(argv[0], "fixtrx") == 0) && (argc == 2)) && mtd_fixtrx) {
  cmd = CMD_FIXTRX;
  device = argv[1];
 } else if (((strcmp(argv[0], "fixseama") == 0) && (argc == 2)) && mtd_fixseama) {
  cmd = CMD_FIXSEAMA;
  device = argv[1];
 } else if (((strcmp(argv[0], "fixwrg") == 0) && (argc == 2)) && mtd_fixwrg) {
  cmd = CMD_FIXWRG;
  device = argv[1];
 } else if (((strcmp(argv[0], "fixwrgg") == 0) && (argc == 2)) && mtd_fixwrgg) {
  cmd = CMD_FIXWRGG;
  device = argv[1];
 } else if ((strcmp(argv[0], "verify") == 0) && (argc == 3)) {
  cmd = CMD_VERIFY;
  imagefile = argv[1];
  device = argv[2];
 } else if ((strcmp(argv[0], "dump") == 0) && (argc == 2)) {
  cmd = CMD_DUMP;
  device = argv[1];
 } else if ((strcmp(argv[0], "write") == 0) && (argc == 3)) {
  cmd = CMD_WRITE;
  device = argv[2];

  if (strcmp(argv[1], "-") == 0) {
   imagefile = "<stdin>";
   imagefd = 0;
  } else {
   imagefile = argv[1];
   if ((imagefd = open(argv[1], O_RDONLY)) < 0) {
    fprintf(stderr, "Couldn't open image file: %s!\n", imagefile);
    exit(1);
   }
  }

  if (!mtd_check(device)) {
   fprintf(stderr, "Can't open device for writing!\n");
   exit(1);
  }

  if (!image_check(imagefd, device) && !force) {
   fprintf(stderr, "Image check failed.\n");
   exit(1);
  }
 } else if ((strcmp(argv[0], "jffs2write") == 0) && (argc == 3)) {
  cmd = CMD_JFFS2WRITE;
  device = argv[2];

  imagefile = argv[1];
  if (!mtd_check(device)) {
   fprintf(stderr, "Can't open device for writing!\n");
   exit(1);
  }
 } else {
  usage();
 }

 sync();

 i = 0;
 unlocked = 0;
 while (erase[i] != ((void*)0)) {
  mtd_unlock(erase[i]);
  mtd_erase(erase[i]);
  if (strcmp(erase[i], device) == 0)
   unlocked = 1;
  i++;
 }

 switch (cmd) {
  case CMD_UNLOCK:
   if (!unlocked)
    mtd_unlock(device);
   break;
  case CMD_VERIFY:
   mtd_verify(device, imagefile);
   break;
  case CMD_DUMP:
   mtd_dump(device, offset, dump_len);
   break;
  case CMD_ERASE:
   if (!unlocked)
    mtd_unlock(device);
   mtd_erase(device);
   break;
  case CMD_WRITE:
   if (!unlocked)
    mtd_unlock(device);
   mtd_write(imagefd, device, fis_layout, part_offset);
   break;
  case CMD_JFFS2WRITE:
   if (!unlocked)
    mtd_unlock(device);
   mtd_write_jffs2(device, imagefile, jffs2dir);
   break;
  case CMD_FIXTRX:
   if (mtd_fixtrx) {
    mtd_fixtrx(device, offset, data_size);
   }
   break;
  case CMD_RESETBC:
   if (mtd_resetbc) {
    mtd_resetbc(device);
   }
   break;
  case CMD_FIXSEAMA:
   if (mtd_fixseama)
    mtd_fixseama(device, 0, data_size);
   break;
  case CMD_FIXWRG:
   if (mtd_fixwrg)
    mtd_fixwrg(device, 0, data_size);
   break;
  case CMD_FIXWRGG:
   if (mtd_fixwrgg)
    mtd_fixwrgg(device, 0, data_size);
   break;
 }

 sync();

 if (boot)
  do_reboot();

 return 0;
}
