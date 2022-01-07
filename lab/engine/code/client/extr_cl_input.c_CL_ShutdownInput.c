
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_RemoveCommand (char*) ;

void CL_ShutdownInput(void)
{
 Cmd_RemoveCommand("centerview");

 Cmd_RemoveCommand("+moveup");
 Cmd_RemoveCommand("-moveup");
 Cmd_RemoveCommand("+movedown");
 Cmd_RemoveCommand("-movedown");
 Cmd_RemoveCommand("+left");
 Cmd_RemoveCommand("-left");
 Cmd_RemoveCommand("+right");
 Cmd_RemoveCommand("-right");
 Cmd_RemoveCommand("+forward");
 Cmd_RemoveCommand("-forward");
 Cmd_RemoveCommand("+back");
 Cmd_RemoveCommand("-back");
 Cmd_RemoveCommand("+lookup");
 Cmd_RemoveCommand("-lookup");
 Cmd_RemoveCommand("+lookdown");
 Cmd_RemoveCommand("-lookdown");
 Cmd_RemoveCommand("+strafe");
 Cmd_RemoveCommand("-strafe");
 Cmd_RemoveCommand("+moveleft");
 Cmd_RemoveCommand("-moveleft");
 Cmd_RemoveCommand("+moveright");
 Cmd_RemoveCommand("-moveright");
 Cmd_RemoveCommand("+speed");
 Cmd_RemoveCommand("-speed");
 Cmd_RemoveCommand("+attack");
 Cmd_RemoveCommand("-attack");
 Cmd_RemoveCommand("+button0");
 Cmd_RemoveCommand("-button0");
 Cmd_RemoveCommand("+button1");
 Cmd_RemoveCommand("-button1");
 Cmd_RemoveCommand("+button2");
 Cmd_RemoveCommand("-button2");
 Cmd_RemoveCommand("+button3");
 Cmd_RemoveCommand("-button3");
 Cmd_RemoveCommand("+button4");
 Cmd_RemoveCommand("-button4");
 Cmd_RemoveCommand("+button5");
 Cmd_RemoveCommand("-button5");
 Cmd_RemoveCommand("+button6");
 Cmd_RemoveCommand("-button6");
 Cmd_RemoveCommand("+button7");
 Cmd_RemoveCommand("-button7");
 Cmd_RemoveCommand("+button8");
 Cmd_RemoveCommand("-button8");
 Cmd_RemoveCommand("+button9");
 Cmd_RemoveCommand("-button9");
 Cmd_RemoveCommand("+button10");
 Cmd_RemoveCommand("-button10");
 Cmd_RemoveCommand("+button11");
 Cmd_RemoveCommand("-button11");
 Cmd_RemoveCommand("+button12");
 Cmd_RemoveCommand("-button12");
 Cmd_RemoveCommand("+button13");
 Cmd_RemoveCommand("-button13");
 Cmd_RemoveCommand("+button14");
 Cmd_RemoveCommand("-button14");
 Cmd_RemoveCommand("+mlook");
 Cmd_RemoveCommand("-mlook");





}
