
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Htop_Action ;


 int Action_follow ;
 size_t KEY_F (int) ;
 size_t KEY_RECLICK ;
 size_t KEY_RESIZE ;
 int actionCollapseIntoParent ;
 int actionExpandCollapseOrSortColumn ;
 int actionExpandOrCollapse ;
 int actionFilterByUser ;
 int actionHelp ;
 int actionHigherPriority ;
 int actionIncFilter ;
 int actionIncSearch ;
 int actionInvertSortOrder ;
 int actionKill ;
 int actionLowerPriority ;
 int actionLsof ;
 int actionQuit ;
 int actionRedraw ;
 int actionResize ;
 int actionSetAffinity ;
 int actionSetSortColumn ;
 int actionSetup ;
 int actionShowEnvScreen ;
 int actionSortByCPU ;
 int actionSortByMemory ;
 int actionSortByTime ;
 int actionStrace ;
 int actionTag ;
 int actionTagAllChildren ;
 int actionToggleKernelThreads ;
 int actionToggleProgramPath ;
 int actionToggleTreeView ;
 int actionToggleUserlandThreads ;
 int actionUntagAll ;

void Action_setBindings(Htop_Action* keys) {
   keys[KEY_RESIZE] = actionResize;
   keys['M'] = actionSortByMemory;
   keys['T'] = actionSortByTime;
   keys['P'] = actionSortByCPU;
   keys['H'] = actionToggleUserlandThreads;
   keys['K'] = actionToggleKernelThreads;
   keys['p'] = actionToggleProgramPath;
   keys['t'] = actionToggleTreeView;
   keys[KEY_F(5)] = actionToggleTreeView;
   keys[KEY_F(4)] = actionIncFilter;
   keys['\\'] = actionIncFilter;
   keys[KEY_F(3)] = actionIncSearch;
   keys['/'] = actionIncSearch;

   keys[']'] = actionHigherPriority;
   keys[KEY_F(7)] = actionHigherPriority;
   keys['['] = actionLowerPriority;
   keys[KEY_F(8)] = actionLowerPriority;
   keys['I'] = actionInvertSortOrder;
   keys[KEY_F(6)] = actionExpandCollapseOrSortColumn;
   keys[KEY_F(18)] = actionExpandCollapseOrSortColumn;
   keys['<'] = actionSetSortColumn;
   keys[','] = actionSetSortColumn;
   keys['>'] = actionSetSortColumn;
   keys['.'] = actionSetSortColumn;
   keys[KEY_F(10)] = actionQuit;
   keys['q'] = actionQuit;
   keys['a'] = actionSetAffinity;
   keys[KEY_F(9)] = actionKill;
   keys['k'] = actionKill;
   keys[KEY_RECLICK] = actionExpandOrCollapse;
   keys['+'] = actionExpandOrCollapse;
   keys['='] = actionExpandOrCollapse;
   keys['-'] = actionExpandOrCollapse;
   keys['\177'] = actionCollapseIntoParent;
   keys['u'] = actionFilterByUser;
   keys['F'] = Action_follow;
   keys['S'] = actionSetup;
   keys['C'] = actionSetup;
   keys[KEY_F(2)] = actionSetup;
   keys['l'] = actionLsof;
   keys['s'] = actionStrace;
   keys[' '] = actionTag;
   keys['\014'] = actionRedraw;
   keys[KEY_F(1)] = actionHelp;
   keys['h'] = actionHelp;
   keys['?'] = actionHelp;
   keys['U'] = actionUntagAll;
   keys['c'] = actionTagAllChildren;
   keys['e'] = actionShowEnvScreen;
}
