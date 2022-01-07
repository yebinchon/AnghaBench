
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thing {void* ptr; int type; } ;


 int cap ;
 int die (char*) ;
 scalar_t__ grow ;
 int len ;
 scalar_t__ realloc (struct thing*,int) ;
 struct thing* things ;

__attribute__((used)) static void *append(void *thing, int type)
{
 if (len >= cap) {
  cap += grow;
  things = (struct thing *) realloc(things, cap * sizeof (struct thing));
  if (things == ((void*)0))
   die("reallocating things array in test/spaced.c append()");
 }
 things[len].ptr = thing;
 things[len].type = type;
 len++;
 return things[len - 1].ptr;
}
