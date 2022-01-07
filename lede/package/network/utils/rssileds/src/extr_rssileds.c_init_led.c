
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct led {char* sysfspath; int * controlfd; } ;
typedef int FILE ;


 char* LEDS_BASEPATH ;
 int LOG_CRIT ;
 void* calloc (int,int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ set_led (struct led*,int) ;
 int sprintf (char*,char*,char*,char*) ;
 int stat (char*,struct stat*) ;
 int strlen (char*) ;
 int syslog (int ,char*,char*) ;

int init_led(struct led **led, char *ledname)
{
 struct led *newled;
 struct stat statbuffer;
 int status;
 char *bp;
 FILE *bfp;

 bp = calloc(sizeof(char), strlen(ledname) + strlen(LEDS_BASEPATH) + 12);
 if ( ! bp )
  goto return_error;

 sprintf(bp, "%s%s/brightness", LEDS_BASEPATH, ledname);

 status = stat(bp, &statbuffer);
 if ( status )
  goto cleanup_fname;

 bfp = fopen( bp, "w" );
 if ( !bfp )
  goto cleanup_fname;

 if ( ferror(bfp) )
  goto cleanup_fp;


 newled = calloc(sizeof(struct led),1);
 if ( !newled )
  goto cleanup_fp;

 newled->sysfspath = bp;
 newled->controlfd = bfp;

 *led = newled;

 if ( set_led(newled, 255) )
  goto cleanup_fp;

 if ( set_led(newled, 0) )
  goto cleanup_fp;

 return 0;

cleanup_fp:
 fclose(bfp);
cleanup_fname:
 free(bp);
return_error:
 syslog(LOG_CRIT, "can't open LED %s\n", ledname);
 *led = ((void*)0);
 return -1;
}
