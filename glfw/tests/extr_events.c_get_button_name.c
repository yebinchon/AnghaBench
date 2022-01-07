
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;





 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char* get_button_name(int button)
{
    switch (button)
    {
        case 130:
            return "left";
        case 128:
            return "right";
        case 129:
            return "middle";
        default:
        {
            static char name[16];
            snprintf(name, sizeof(name), "%i", button);
            return name;
        }
    }
}
