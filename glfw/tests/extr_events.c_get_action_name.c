
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* get_action_name(int action)
{
    switch (action)
    {
        case 130:
            return "pressed";
        case 129:
            return "released";
        case 128:
            return "repeated";
    }

    return "caused unknown action";
}
