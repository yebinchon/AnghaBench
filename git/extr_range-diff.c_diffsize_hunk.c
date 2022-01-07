
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int diffsize_consume (void*,int *,int ) ;

__attribute__((used)) static void diffsize_hunk(void *data, long ob, long on, long nb, long nn,
     const char *funcline, long funclen)
{
 diffsize_consume(data, ((void*)0), 0);
}
