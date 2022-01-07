
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_open_data {scalar_t__ errors; } ;


 int fprintf (int ,char*) ;
 scalar_t__ malloc (int) ;
 int memset (struct sa_open_data*,int ,int) ;
 int stderr ;

__attribute__((used)) static struct sa_open_data *salist_open(void)
{
 struct sa_open_data *od = ((void*)0);

 od = (struct sa_open_data *)malloc(sizeof(*od));
 if (!od) {
  fprintf(stderr, "salist: cannot allocate sa_open_data.\n");
  return ((void*)0);
 }
 memset(od, 0, sizeof(*od));
 od->errors = 0;

 return od;
}
