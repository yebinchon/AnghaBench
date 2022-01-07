
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int BDEVT_SIZE ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static char *bdevt_str(dev_t devt, char *buf)
{
 if (MAJOR(devt) <= 0xff && MINOR(devt) <= 0xff) {
  char tbuf[BDEVT_SIZE];
  snprintf(tbuf, BDEVT_SIZE, "%02x%02x", MAJOR(devt), MINOR(devt));
  snprintf(buf, BDEVT_SIZE, "%-9s", tbuf);
 } else
  snprintf(buf, BDEVT_SIZE, "%03x:%05x", MAJOR(devt), MINOR(devt));

 return buf;
}
