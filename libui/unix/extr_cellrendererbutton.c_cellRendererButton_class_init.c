
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cellRendererButtonClass ;
struct TYPE_5__ {int activate; int render; int get_aligned_area; int get_preferred_height; int get_preferred_height_for_width; int get_preferred_width; int get_request_mode; } ;
struct TYPE_4__ {int get_property; int set_property; int finalize; int dispose; } ;


 TYPE_3__* GTK_CELL_RENDERER_CLASS (int *) ;
 TYPE_1__* G_OBJECT_CLASS (int *) ;
 int G_PARAM_CONSTRUCT ;
 int G_PARAM_READWRITE ;
 int G_PARAM_STATIC_STRINGS ;
 int G_SIGNAL_RUN_LAST ;
 int G_TYPE_FROM_CLASS (int *) ;
 int G_TYPE_NONE ;
 int G_TYPE_STRING ;
 int cellRendererButton_activate ;
 int cellRendererButton_dispose ;
 int cellRendererButton_finalize ;
 int cellRendererButton_get_aligned_area ;
 int cellRendererButton_get_preferred_height ;
 int cellRendererButton_get_preferred_height_for_width ;
 int cellRendererButton_get_preferred_width ;
 int cellRendererButton_get_property ;
 int cellRendererButton_get_request_mode ;
 int cellRendererButton_render ;
 int cellRendererButton_set_property ;
 int clickedSignal ;
 int g_object_class_install_properties (TYPE_1__*,int,int *) ;
 int g_param_spec_string (char*,char*,char*,char*,int) ;
 int g_signal_new (char*,int ,int ,int ,int *,int *,int *,int ,int,int ) ;
 int * props ;

__attribute__((used)) static void cellRendererButton_class_init(cellRendererButtonClass *class)
{
 G_OBJECT_CLASS(class)->dispose = cellRendererButton_dispose;
 G_OBJECT_CLASS(class)->finalize = cellRendererButton_finalize;
 G_OBJECT_CLASS(class)->set_property = cellRendererButton_set_property;
 G_OBJECT_CLASS(class)->get_property = cellRendererButton_get_property;
 GTK_CELL_RENDERER_CLASS(class)->get_request_mode = cellRendererButton_get_request_mode;
 GTK_CELL_RENDERER_CLASS(class)->get_preferred_width = cellRendererButton_get_preferred_width;
 GTK_CELL_RENDERER_CLASS(class)->get_preferred_height_for_width = cellRendererButton_get_preferred_height_for_width;
 GTK_CELL_RENDERER_CLASS(class)->get_preferred_height = cellRendererButton_get_preferred_height;

 GTK_CELL_RENDERER_CLASS(class)->get_aligned_area = cellRendererButton_get_aligned_area;

 GTK_CELL_RENDERER_CLASS(class)->render = cellRendererButton_render;
 GTK_CELL_RENDERER_CLASS(class)->activate = cellRendererButton_activate;


 props[1] = g_param_spec_string("text",
  "Text",
  "Button text",
  "",
  G_PARAM_READWRITE | G_PARAM_CONSTRUCT | G_PARAM_STATIC_STRINGS);
 g_object_class_install_properties(G_OBJECT_CLASS(class), 2, props);

 clickedSignal = g_signal_new("clicked",
  G_TYPE_FROM_CLASS(class),
  G_SIGNAL_RUN_LAST,
  0,
  ((void*)0), ((void*)0), ((void*)0),
  G_TYPE_NONE,
  1, G_TYPE_STRING);
}
