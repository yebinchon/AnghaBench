
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gkc_summary {int dummy; } ;
typedef int FILE ;


 unsigned int ARRAY_SIZE (double*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,long) ;
 struct gkc_summary* gkc_combine (struct gkc_summary*,struct gkc_summary*) ;
 int gkc_insert_value (struct gkc_summary*,int) ;
 int gkc_print_summary (struct gkc_summary*) ;
 int gkc_sanity_check (struct gkc_summary*) ;
 struct gkc_summary* gkc_summary_alloc (double) ;
 int gkc_summary_free (struct gkc_summary*) ;
 int print_query (struct gkc_summary*,double) ;
 int random () ;
 int srandom (int ) ;
 int time (int *) ;
 scalar_t__ tofile ;

int main(void)
{

 unsigned int i;
 double input[] = { 12, 6, 10, 1 };

 FILE *out;
 struct gkc_summary *summary;
 struct gkc_summary *s1, *s2, *snew;

 summary = gkc_summary_alloc(0.01);
 print_query(summary, 0.1);
 goto test_combine;
 summary = gkc_summary_alloc(0.01);
 (void)input;



 if (0) {
  out = fopen("data", "w+");
 }
 srandom(time(((void*)0)));
 for (i = 0; i < 10 * 1000 * 1000; i++) {
  long r = random() % 10000;
  gkc_insert_value(summary, r);
  if (0) {
   fprintf(out, "%ld\n", r);
  }
 }
 if (0) {
  fclose(out);
 }
 gkc_print_summary(summary);
 print_query(summary, .02);
 print_query(summary, .1);
 print_query(summary, .25);
 print_query(summary, .5);
 print_query(summary, .75);
 print_query(summary, .82);
 print_query(summary, .88);
 print_query(summary, .86);
 print_query(summary, .99);

 gkc_sanity_check(summary);

 gkc_summary_free(summary);

test_combine:
 s1 = gkc_summary_alloc(0.01);
 s2 = gkc_summary_alloc(0.01);

 for (i = 0; i < 1 * 10 * 1000; i++) {
  long r = random() % 10000;
  gkc_insert_value(s1, r);
 }





 snew = gkc_combine(s1, s2);
 gkc_summary_free(s1);
 gkc_summary_free(s2);

 gkc_print_summary(snew);
 print_query(snew, .02);
 print_query(snew, .1);
 print_query(snew, .25);
 print_query(snew, .5);
 print_query(snew, .75);
 print_query(snew, .82);
 print_query(snew, .88);
 print_query(snew, .86);
 print_query(snew, .99);

 gkc_sanity_check(snew);

 gkc_summary_free(snew);

 return 0;
}
