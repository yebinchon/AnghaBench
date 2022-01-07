
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prio_queue {int * compare; int member_0; } ;


 int BUG (char*) ;
 int atoi (char const*) ;
 int intcmp ;
 void* prio_queue_get (struct prio_queue*) ;
 void* prio_queue_peek (struct prio_queue*) ;
 int prio_queue_put (struct prio_queue*,int*) ;
 int show (void*) ;
 int strcmp (char const*,char*) ;
 int* xmalloc (int) ;

int cmd__prio_queue(int argc, const char **argv)
{
 struct prio_queue pq = { intcmp };

 while (*++argv) {
  if (!strcmp(*argv, "get")) {
   void *peek = prio_queue_peek(&pq);
   void *get = prio_queue_get(&pq);
   if (peek != get)
    BUG("peek and get results do not match");
   show(get);
  } else if (!strcmp(*argv, "dump")) {
   void *peek;
   void *get;
   while ((peek = prio_queue_peek(&pq))) {
    get = prio_queue_get(&pq);
    if (peek != get)
     BUG("peek and get results do not match");
    show(get);
   }
  } else if (!strcmp(*argv, "stack")) {
   pq.compare = ((void*)0);
  } else {
   int *v = xmalloc(sizeof(*v));
   *v = atoi(*argv);
   prio_queue_put(&pq, v);
  }
 }

 return 0;
}
