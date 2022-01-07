
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct individual_sensor {int token; } ;
typedef int power_source ;
typedef int lid_status ;
typedef int key_switch ;
typedef int ibm_drconnector ;
typedef int epow_sensor ;
typedef int enclosure_switch ;
typedef int battery_remaining ;
typedef int battery_cyclestate ;
typedef int battery_charging ;
 int cel_to_fahr (int) ;
 int get_location_code (struct seq_file*,struct individual_sensor*,char const*) ;
 int ppc_rtas_process_error (int) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void ppc_rtas_process_sensor(struct seq_file *m,
 struct individual_sensor *s, int state, int error, const char *loc)
{

 const char * key_switch[] = { "Off\t", "Normal\t", "Secure\t",
      "Maintenance" };
 const char * enclosure_switch[] = { "Closed", "Open" };
 const char * lid_status[] = { " ", "Open", "Closed" };
 const char * power_source[] = { "AC\t", "Battery",
        "AC & Battery" };
 const char * battery_remaining[] = { "Very Low", "Low", "Mid", "High" };
 const char * epow_sensor[] = {
  "EPOW Reset", "Cooling warning", "Power warning",
  "System shutdown", "System halt", "EPOW main enclosure",
  "EPOW power off" };
 const char * battery_cyclestate[] = { "None", "In progress",
      "Requested" };
 const char * battery_charging[] = { "Charging", "Discharging",
      "No current flow" };
 const char * ibm_drconnector[] = { "Empty", "Present", "Unusable",
      "Exchange" };

 int have_strings = 0;
 int num_states = 0;
 int temperature = 0;
 int unknown = 0;



 switch (s->token) {
  case 131:
   seq_printf(m, "Key switch:\t");
   num_states = sizeof(key_switch) / sizeof(char *);
   if (state < num_states) {
    seq_printf(m, "%s\t", key_switch[state]);
    have_strings = 1;
   }
   break;
  case 138:
   seq_printf(m, "Enclosure switch:\t");
   num_states = sizeof(enclosure_switch) / sizeof(char *);
   if (state < num_states) {
    seq_printf(m, "%s\t",
      enclosure_switch[state]);
    have_strings = 1;
   }
   break;
  case 128:
   seq_printf(m, "Temp. (C/F):\t");
   temperature = 1;
   break;
  case 130:
   seq_printf(m, "Lid status:\t");
   num_states = sizeof(lid_status) / sizeof(char *);
   if (state < num_states) {
    seq_printf(m, "%s\t", lid_status[state]);
    have_strings = 1;
   }
   break;
  case 129:
   seq_printf(m, "Power source:\t");
   num_states = sizeof(power_source) / sizeof(char *);
   if (state < num_states) {
    seq_printf(m, "%s\t",
      power_source[state]);
    have_strings = 1;
   }
   break;
  case 139:
   seq_printf(m, "Battery voltage:\t");
   break;
  case 140:
   seq_printf(m, "Battery remaining:\t");
   num_states = sizeof(battery_remaining) / sizeof(char *);
   if (state < num_states)
   {
    seq_printf(m, "%s\t",
      battery_remaining[state]);
    have_strings = 1;
   }
   break;
  case 141:
   seq_printf(m, "Battery percentage:\t");
   break;
  case 137:
   seq_printf(m, "EPOW Sensor:\t");
   num_states = sizeof(epow_sensor) / sizeof(char *);
   if (state < num_states) {
    seq_printf(m, "%s\t", epow_sensor[state]);
    have_strings = 1;
   }
   break;
  case 142:
   seq_printf(m, "Battery cyclestate:\t");
   num_states = sizeof(battery_cyclestate) /
          sizeof(char *);
   if (state < num_states) {
    seq_printf(m, "%s\t",
      battery_cyclestate[state]);
    have_strings = 1;
   }
   break;
  case 143:
   seq_printf(m, "Battery Charging:\t");
   num_states = sizeof(battery_charging) / sizeof(char *);
   if (state < num_states) {
    seq_printf(m, "%s\t",
      battery_charging[state]);
    have_strings = 1;
   }
   break;
  case 133:
   seq_printf(m, "Surveillance:\t");
   break;
  case 135:
   seq_printf(m, "Fan (rpm):\t");
   break;
  case 132:
   seq_printf(m, "Voltage (mv):\t");
   break;
  case 136:
   seq_printf(m, "DR connector:\t");
   num_states = sizeof(ibm_drconnector) / sizeof(char *);
   if (state < num_states) {
    seq_printf(m, "%s\t",
      ibm_drconnector[state]);
    have_strings = 1;
   }
   break;
  case 134:
   seq_printf(m, "Powersupply:\t");
   break;
  default:
   seq_printf(m, "Unknown sensor (type %d), ignoring it\n",
     s->token);
   unknown = 1;
   have_strings = 1;
   break;
 }
 if (have_strings == 0) {
  if (temperature) {
   seq_printf(m, "%4d /%4d\t", state, cel_to_fahr(state));
  } else
   seq_printf(m, "%10d\t", state);
 }
 if (unknown == 0) {
  seq_printf(m, "%s\t", ppc_rtas_process_error(error));
  get_location_code(m, s, loc);
 }
}
