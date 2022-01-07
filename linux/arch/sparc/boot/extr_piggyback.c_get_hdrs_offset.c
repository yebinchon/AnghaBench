
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int AOUT_TEXT_OFFSET ;
 int BUFSIZE ;
 int LOOKBACK ;
 int SEEK_SET ;
 int die (char const*) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int ld2 (char*) ;
 scalar_t__ lseek (int,int,int ) ;
 int read (int,char*,int) ;
 int stderr ;

__attribute__((used)) static off_t get_hdrs_offset(int kernelfd, const char *filename)
{
 char buffer[BUFSIZE];
 off_t offset;
 int i;

 if (lseek(kernelfd, 0, SEEK_SET) < 0)
  die("lseek");
 if (read(kernelfd, buffer, BUFSIZE) != BUFSIZE)
  die(filename);

 if (buffer[40] == 'H' && buffer[41] == 'd' &&
     buffer[42] == 'r' && buffer[43] == 'S') {
  return 40;
 } else {


  offset = ld2(buffer + AOUT_TEXT_OFFSET + 2) << 2;

  offset -= LOOKBACK;

  offset += AOUT_TEXT_OFFSET;
  if (lseek(kernelfd, offset, SEEK_SET) < 0)
   die("lseek");
  if (read(kernelfd, buffer, BUFSIZE) != BUFSIZE)
   die(filename);

  for (i = 0; i < LOOKBACK; i += 4) {
   if (buffer[i + 0] == 'H' && buffer[i + 1] == 'd' &&
       buffer[i + 2] == 'r' && buffer[i + 3] == 'S') {
    return offset + i;
   }
  }
 }
 fprintf (stderr, "Couldn't find headers signature in %s\n", filename);
 exit(1);
}
