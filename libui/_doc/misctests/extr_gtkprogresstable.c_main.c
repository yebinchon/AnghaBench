
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkTreeViewColumn ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;


 int GTK_ALIGN_CENTER ;
 int GTK_CONTAINER (int ) ;
 int GTK_ORIENTATION_HORIZONTAL ;
 int GTK_ORIENTATION_VERTICAL ;
 int GTK_SCROLLED_WINDOW (int ) ;
 int GTK_SHADOW_IN ;
 int GTK_TREE_MODEL (int ) ;
 int GTK_TREE_VIEW (int ) ;
 int GTK_WINDOW_TOPLEVEL ;
 int G_CALLBACK (int ) ;
 int G_TYPE_INT ;
 int TRUE ;
 int g_signal_connect (int ,char*,int ,int *) ;
 int gtk_box_new (int ,int) ;
 int gtk_button_new_with_label (char*) ;
 int * gtk_cell_renderer_progress_new () ;
 int gtk_container_add (int ,int ) ;
 int gtk_container_set_border_width (int ,int) ;
 int gtk_init (int *,int *) ;
 int gtk_list_store_append (int ,int *) ;
 int gtk_list_store_new (int,int ) ;
 int gtk_list_store_set (int ,int *,int ,int ,int) ;
 int gtk_main () ;
 int gtk_progress_bar_new () ;
 int gtk_scrolled_window_new (int *,int *) ;
 int gtk_scrolled_window_set_shadow_type (int ,int ) ;
 int gtk_tree_view_append_column (int ,int *) ;
 int * gtk_tree_view_column_new () ;
 int gtk_tree_view_column_pack_start (int *,int *,int ) ;
 int gtk_tree_view_column_set_cell_data_func (int *,int *,int ,int *,int *) ;
 int gtk_tree_view_column_set_resizable (int *,int ) ;
 int gtk_tree_view_column_set_title (int *,char*) ;
 int gtk_tree_view_new_with_model (int ) ;
 int gtk_widget_set_halign (int ,int ) ;
 int gtk_widget_set_vexpand (int ,int ) ;
 int gtk_widget_show_all (int ) ;
 int gtk_window_new (int ) ;
 int hbox ;
 int hbox2 ;
 int mainwin ;
 int model ;
 int onClosing ;
 int onStartProgressClicked ;
 int onStartTableClicked ;
 int pbarDataFunc ;
 int progressbar ;
 int scrolledWindow ;
 int startProgress ;
 int startTable ;
 int treeview ;
 int vbox ;

int main(void)
{
 GtkTreeIter iter;
 GtkTreeViewColumn *col;
 GtkCellRenderer *r;

 gtk_init(((void*)0), ((void*)0));

 mainwin = gtk_window_new(GTK_WINDOW_TOPLEVEL);
 g_signal_connect(mainwin, "delete-event", G_CALLBACK(onClosing), ((void*)0));

 vbox = gtk_box_new(GTK_ORIENTATION_VERTICAL, 12);
 gtk_container_set_border_width(GTK_CONTAINER(vbox), 12);
 gtk_container_add(GTK_CONTAINER(mainwin), vbox);

 hbox = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 6);
 gtk_widget_set_halign(hbox, GTK_ALIGN_CENTER);
 gtk_container_add(GTK_CONTAINER(vbox), hbox);

 startProgress = gtk_button_new_with_label("Start Progress Bar");
 g_signal_connect(startProgress, "clicked", G_CALLBACK(onStartProgressClicked), ((void*)0));
 gtk_container_add(GTK_CONTAINER(hbox), startProgress);

 startTable = gtk_button_new_with_label("Start Table Cell Renderer");
 g_signal_connect(startTable, "clicked", G_CALLBACK(onStartTableClicked), ((void*)0));
 gtk_container_add(GTK_CONTAINER(hbox), startTable);

 progressbar = gtk_progress_bar_new();
 gtk_container_add(GTK_CONTAINER(vbox), progressbar);

 scrolledWindow = gtk_scrolled_window_new(((void*)0), ((void*)0));
 gtk_scrolled_window_set_shadow_type(GTK_SCROLLED_WINDOW(scrolledWindow), GTK_SHADOW_IN);
 gtk_widget_set_vexpand(scrolledWindow, TRUE);
 gtk_container_add(GTK_CONTAINER(vbox), scrolledWindow);

 model = gtk_list_store_new(1, G_TYPE_INT);
 gtk_list_store_append(model, &iter);
 gtk_list_store_set(model, &iter,
  0, 0,
  -1);

 treeview = gtk_tree_view_new_with_model(GTK_TREE_MODEL(model));
 gtk_container_add(GTK_CONTAINER(scrolledWindow), treeview);

 col = gtk_tree_view_column_new();
 gtk_tree_view_column_set_resizable(col, TRUE);
 gtk_tree_view_column_set_title(col, "Column");
 gtk_tree_view_append_column(GTK_TREE_VIEW(treeview), col);

 r = gtk_cell_renderer_progress_new();
 gtk_tree_view_column_pack_start(col, r, TRUE);
 gtk_tree_view_column_set_cell_data_func(col, r, pbarDataFunc, ((void*)0), ((void*)0));

 hbox2 = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 6);
 gtk_widget_set_halign(hbox2, GTK_ALIGN_CENTER);
 gtk_container_add(GTK_CONTAINER(vbox), hbox2);

 gtk_container_add(GTK_CONTAINER(hbox2), gtk_button_new_with_label("These buttons"));
 gtk_container_add(GTK_CONTAINER(hbox2), gtk_button_new_with_label("do nothing"));
 gtk_container_add(GTK_CONTAINER(hbox2), gtk_button_new_with_label("when clicked"));

 gtk_widget_show_all(mainwin);
 gtk_main();
 return 0;
}
