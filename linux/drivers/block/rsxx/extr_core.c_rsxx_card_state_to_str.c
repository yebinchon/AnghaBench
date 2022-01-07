
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ffs (unsigned int) ;

__attribute__((used)) static const char * const rsxx_card_state_to_str(unsigned int state)
{
 static const char * const state_strings[] = {
  "Unknown", "Shutdown", "Starting", "Formatting",
  "Uninitialized", "Good", "Shutting Down",
  "Fault", "Read Only Fault", "dStroying"
 };

 return state_strings[ffs(state)];
}
