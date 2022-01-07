
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rowcol {scalar_t__ row; scalar_t__ col; } ;
typedef scalar_t__ gconstpointer ;
typedef int gboolean ;



__attribute__((used)) static gboolean rowcolEqual(gconstpointer a, gconstpointer b)
{
 const struct rowcol *ra = (const struct rowcol *) a;
 const struct rowcol *rb = (const struct rowcol *) b;

 return (ra->row == rb->row) && (ra->col == rb->col);
}
