
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tareas {int close; int bottomrightresize; int bottomleftresize; int toprightresize; int topleftresize; int bottomresize; int rightresize; int topresize; int leftresize; int alsomove; int move; } ;


 int tsetrect (int ,int,int,int,int) ;

__attribute__((used)) static void filltareas(double awid, double aht, struct tareas *ta)
{
 tsetrect(ta->move, 20, 20, awid - 20, 20 + 30);
 tsetrect(ta->alsomove, 30, 200, 100, 270);
 tsetrect(ta->leftresize, 5, 20, 15, aht - 20);
 tsetrect(ta->topresize, 20, 5, awid - 20, 15);
 tsetrect(ta->rightresize, awid - 15, 20, awid - 5, aht - 20);
 tsetrect(ta->bottomresize, 20, aht - 15, awid - 20, aht - 5);
 tsetrect(ta->topleftresize, 5, 5, 15, 15);
 tsetrect(ta->toprightresize, awid - 15, 5, awid - 5, 15);
 tsetrect(ta->bottomleftresize, 5, aht - 15, 15, aht - 5);
 tsetrect(ta->bottomrightresize, awid - 15, aht - 15, awid - 5, aht - 5);
 tsetrect(ta->close, 130, 200, 200, 270);
}
