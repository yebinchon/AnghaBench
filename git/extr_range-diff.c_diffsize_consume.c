
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void diffsize_consume(void *data, char *line, unsigned long len)
{
 (*(int *)data)++;
}
