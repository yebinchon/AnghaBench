
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADDED ;
 int SEEN ;
 int SHOWN ;
 int clear_object_flags (int) ;

void reset_revision_walk(void)
{
 clear_object_flags(SEEN | ADDED | SHOWN);
}
