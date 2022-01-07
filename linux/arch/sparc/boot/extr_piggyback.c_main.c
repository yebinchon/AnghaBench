
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned int st_size; } ;
typedef int off_t ;


 unsigned int AOUT_TEXT_OFFSET ;
 int O_RDONLY ;
 int O_RDWR ;
 unsigned int align (unsigned int) ;
 scalar_t__ close (int) ;
 int die (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int get_hdrs_offset (int,char*) ;
 int get_start_end (char*,unsigned int*,unsigned int*) ;
 int is64bit ;
 scalar_t__ lseek (int,unsigned int,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int st4 (char*,unsigned int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;
 unsigned int write (int,char*,unsigned int) ;

int main(int argc,char **argv)
{
 static char aout_magic[] = { 0x01, 0x03, 0x01, 0x07 };
 char buffer[1024];
 unsigned int i, start, end;
 off_t offset;
 struct stat s;
 int image, tail;

 if (argc != 5)
  usage();
 if (strcmp(argv[1], "64") == 0)
  is64bit = 1;
 if (stat (argv[4], &s) < 0)
  die(argv[4]);

 if (!get_start_end(argv[3], &start, &end)) {
  fprintf(stderr, "Could not determine start and end from %s\n",
          argv[3]);
  exit(1);
 }
 if ((image = open(argv[2], O_RDWR)) < 0)
  die(argv[2]);
 if (read(image, buffer, 512) != 512)
  die(argv[2]);
 if (memcmp(buffer, aout_magic, 4) != 0) {
  fprintf (stderr, "Not a.out. Don't blame me.\n");
  exit(1);
 }
 offset = get_hdrs_offset(image, argv[2]);

 offset += 10;

 if (lseek(image, offset, 0) < 0)
  die("lseek");
 st4(buffer, 0);
 st4(buffer + 4, 0x01000000);
 st4(buffer + 8, align(end + 32));
 st4(buffer + 12, s.st_size);

 if (write(image, buffer + 2, 14) != 14)
  die(argv[2]);


 if (is64bit)
 {
  if (lseek(image, 4, 0) < 0)
   die("lseek");

  st4(buffer, align(end + 32 + 8191) - (start & ~0x3fffffUL) +
              s.st_size);

  st4(buffer + 4, 0);

  st4(buffer + 8, 0);
  if (write(image, buffer, 12) != 12)
   die(argv[2]);
 }


 if (lseek(image, AOUT_TEXT_OFFSET - start + align(end + 32), 0) < 0)
  die("lseek");
 if ((tail = open(argv[4], O_RDONLY)) < 0)
  die(argv[4]);
 while ((i = read(tail, buffer, 1024)) > 0)
  if (write(image, buffer, i) != i)
   die(argv[2]);
 if (close(image) < 0)
  die("close");
 if (close(tail) < 0)
  die("close");
 return 0;
}
