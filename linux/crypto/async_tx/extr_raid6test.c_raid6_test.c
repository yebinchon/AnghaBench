
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NDISKS ;
 int alloc_page (int ) ;
 int * data ;
 int pr (char*,...) ;
 int put_page (int ) ;
 scalar_t__ test (int,int*) ;

__attribute__((used)) static int raid6_test(void)
{
 int err = 0;
 int tests = 0;
 int i;

 for (i = 0; i < NDISKS+3; i++) {
  data[i] = alloc_page(GFP_KERNEL);
  if (!data[i]) {
   while (i--)
    put_page(data[i]);
   return -ENOMEM;
  }
 }


 if (NDISKS > 4)
  err += test(4, &tests);
 if (NDISKS > 5)
  err += test(5, &tests);



 if (NDISKS > 12) {
  err += test(11, &tests);
  err += test(12, &tests);
 }





 if (NDISKS > 24)
  err += test(24, &tests);

 err += test(NDISKS, &tests);

 pr("\n");
 pr("complete (%d tests, %d failure%s)\n",
    tests, err, err == 1 ? "" : "s");

 for (i = 0; i < NDISKS+3; i++)
  put_page(data[i]);

 return 0;
}
