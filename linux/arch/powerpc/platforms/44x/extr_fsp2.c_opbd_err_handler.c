
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int panic (char*) ;

__attribute__((used)) static irqreturn_t opbd_err_handler(int irq, void *data) {
 panic("OPBD Error\n");
}
