
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct histogram {struct histogram* bins; } ;


 int free (struct histogram*) ;

__attribute__((used)) static void
histogram_free(struct histogram *h)
{
 free(h->bins);
 free(h);
}
