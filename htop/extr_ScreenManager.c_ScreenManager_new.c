
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x1; int y1; int x2; int y2; int owner; int allowFocusChange; int const* settings; int const* header; scalar_t__ panelCount; int panels; int orientation; } ;
typedef int Settings ;
typedef TYPE_1__ ScreenManager ;
typedef int Orientation ;
typedef int Header ;


 int Class (int ) ;
 int DEFAULT_SIZE ;
 int Panel ;
 int Vector_new (int ,int,int ) ;
 TYPE_1__* xMalloc (int) ;

ScreenManager* ScreenManager_new(int x1, int y1, int x2, int y2, Orientation orientation, const Header* header, const Settings* settings, bool owner) {
   ScreenManager* this;
   this = xMalloc(sizeof(ScreenManager));
   this->x1 = x1;
   this->y1 = y1;
   this->x2 = x2;
   this->y2 = y2;
   this->orientation = orientation;
   this->panels = Vector_new(Class(Panel), owner, DEFAULT_SIZE);
   this->panelCount = 0;
   this->header = header;
   this->settings = settings;
   this->owner = owner;
   this->allowFocusChange = 1;
   return this;
}
