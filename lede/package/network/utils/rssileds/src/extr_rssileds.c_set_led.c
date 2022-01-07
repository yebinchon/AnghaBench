
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led {unsigned char state; int controlfd; } ;


 int fflush (int ) ;
 int fwrite (char*,int,int ,int ) ;
 int rewind (int ) ;
 int snprintf (char*,int,char*,unsigned char) ;
 int strlen (char*) ;

int set_led(struct led *led, unsigned char value)
{
 char buf[8];

 if ( ! led )
  return -1;

 if ( ! led->controlfd )
  return -1;

 if ( led->state == value )
  return 0;

 snprintf(buf, 8, "%d", value);

 rewind(led->controlfd);

 if ( ! fwrite(buf, sizeof(char), strlen(buf), led->controlfd) )
  return -2;

 fflush(led->controlfd);
 led->state=value;

 return 0;
}
