
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abuf {int b; } ;


 int free (int ) ;

void abFree(struct abuf *ab) {
    free(ab->b);
}
