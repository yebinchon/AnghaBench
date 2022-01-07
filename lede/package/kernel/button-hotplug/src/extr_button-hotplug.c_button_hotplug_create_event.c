
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh_event {char const* name; unsigned long seen; char* action; int work; } ;


 int BH_DBG (char*,char const*,unsigned long,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,void*) ;
 scalar_t__ button_hotplug_work ;
 struct bh_event* kzalloc (int,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int button_hotplug_create_event(const char *name, unsigned long seen,
  int pressed)
{
 struct bh_event *event;

 BH_DBG("create event, name=%s, seen=%lu, pressed=%d\n",
  name, seen, pressed);

 event = kzalloc(sizeof(*event), GFP_KERNEL);
 if (!event)
  return -ENOMEM;

 event->name = name;
 event->seen = seen;
 event->action = pressed ? "pressed" : "released";

 INIT_WORK(&event->work, (void *)(void *)button_hotplug_work);
 schedule_work(&event->work);

 return 0;
}
