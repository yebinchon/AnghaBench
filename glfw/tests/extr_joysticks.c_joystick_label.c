
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int label ;


 char* glfwGetJoystickName (int) ;
 int snprintf (char*,int,char*,int,char*) ;

__attribute__((used)) static const char* joystick_label(int jid)
{
    static char label[1024];
    snprintf(label, sizeof(label), "%i: %s", jid + 1, glfwGetJoystickName(jid));
    return label;
}
