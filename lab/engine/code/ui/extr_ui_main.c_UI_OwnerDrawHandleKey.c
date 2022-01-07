
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
 int UI_BotName_HandleKey (int,float*,int) ;
 int UI_BotSkill_HandleKey (int,float*,int) ;


 int UI_ClanName_HandleKey (int,float*,int) ;
 int UI_Crosshair_HandleKey (int,float*,int) ;

 int UI_Effects_HandleKey (int,float*,int) ;

 int UI_GameType_HandleKey (int,float*,int,int ) ;

 int UI_Handicap_HandleKey (int,float*,int) ;

 int UI_JoinGameType_HandleKey (int,float*,int) ;



 int UI_NetFilter_HandleKey (int,float*,int) ;
 int UI_NetGameType_HandleKey (int,float*,int) ;
 int UI_NetSource_HandleKey (int,float*,int) ;

 int UI_OpponentName_HandleKey (int,float*,int) ;







 int UI_RedBlue_HandleKey (int,float*,int) ;


 int UI_SelectedPlayer_HandleKey (int,float*,int) ;
 int UI_Skill_HandleKey (int,float*,int) ;
 int UI_TeamMember_HandleKey (int,float*,int,int ,int ) ;
 int UI_TeamName_HandleKey (int,float*,int,int ) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean UI_OwnerDrawHandleKey(int ownerDraw, int flags, float *special, int key) {
  switch (ownerDraw) {
    case 142:
      return UI_Handicap_HandleKey(flags, special, key);
      break;
    case 144:
      return UI_Effects_HandleKey(flags, special, key);
      break;
    case 146:
      return UI_ClanName_HandleKey(flags, special, key);
      break;
    case 143:
      return UI_GameType_HandleKey(flags, special, key, qtrue);
      break;
    case 139:
      return UI_NetGameType_HandleKey(flags, special, key);
      break;
    case 141:
      return UI_JoinGameType_HandleKey(flags, special, key);
      break;
    case 128:
      return UI_Skill_HandleKey(flags, special, key);
      break;
    case 149:
      return UI_TeamName_HandleKey(flags, special, key, qtrue);
      break;
    case 130:
      return UI_TeamName_HandleKey(flags, special, key, qfalse);
      break;
    case 154:
  case 153:
  case 152:
  case 151:
  case 150:
      UI_TeamMember_HandleKey(flags, special, key, qtrue, ownerDraw - 154 + 1);
      break;
    case 135:
  case 134:
  case 133:
  case 132:
  case 131:
      UI_TeamMember_HandleKey(flags, special, key, qfalse, ownerDraw - 135 + 1);
      break;
  case 138:
      UI_NetSource_HandleKey(flags, special, key);
   break;
  case 140:
      UI_NetFilter_HandleKey(flags, special, key);
   break;
  case 137:
   UI_OpponentName_HandleKey(flags, special, key);
   break;
  case 148:
   return UI_BotName_HandleKey(flags, special, key);
   break;
  case 147:
   return UI_BotSkill_HandleKey(flags, special, key);
   break;
  case 136:
   UI_RedBlue_HandleKey(flags, special, key);
   break;
  case 145:
   UI_Crosshair_HandleKey(flags, special, key);
   break;
  case 129:
   UI_SelectedPlayer_HandleKey(flags, special, key);
   break;
    default:
      break;
  }

  return qfalse;
}
