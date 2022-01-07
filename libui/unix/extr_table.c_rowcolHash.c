
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rowcol {scalar_t__ col; scalar_t__ row; } ;
typedef int guint ;
typedef scalar_t__ gconstpointer ;



__attribute__((used)) static guint rowcolHash(gconstpointer key)
{
 const struct rowcol *rc = (const struct rowcol *) key;
 guint row, col;

 row = (guint) (rc->row);
 col = (guint) (rc->col);
 return row ^ col;
}
