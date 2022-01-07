
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queued {int data; int (* f ) (int ) ;} ;
typedef scalar_t__ gpointer ;
typedef int gboolean ;


 int FALSE ;
 int g_free (struct queued*) ;
 int stub1 (int ) ;

__attribute__((used)) static gboolean doqueued(gpointer data)
{
 struct queued *q = (struct queued *) data;

 (*(q->f))(q->data);
 g_free(q);
 return FALSE;
}
