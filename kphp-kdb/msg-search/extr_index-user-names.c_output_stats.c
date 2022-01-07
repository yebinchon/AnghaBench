
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int users; } ;


 int Dc ;
 int MAX_PAIRS ;
 int MAX_USERS ;
 int Pc ;
 TYPE_1__ U ;
 int fprintf (int ,char*,int,int ,int ,int ,int ) ;
 int stderr ;

void output_stats (void) {
  fprintf (stderr, "%d hashes read (max %ld), %d hashes written, describing users up to %d (max %ld)\n",
    Pc, MAX_PAIRS, Dc, U.users, MAX_USERS);
}
