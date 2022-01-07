; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_Cache_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_Cache_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_Cache_f() #0 {
  %1 = call i32 (...) @MainMenu_Cache()
  %2 = call i32 (...) @InGame_Cache()
  %3 = call i32 (...) @ConfirmMenu_Cache()
  %4 = call i32 (...) @PlayerModel_Cache()
  %5 = call i32 (...) @PlayerSettings_Cache()
  %6 = call i32 (...) @Controls_Cache()
  %7 = call i32 (...) @Demos_Cache()
  %8 = call i32 (...) @UI_CinematicsMenu_Cache()
  %9 = call i32 (...) @Preferences_Cache()
  %10 = call i32 (...) @ServerInfo_Cache()
  %11 = call i32 (...) @SpecifyServer_Cache()
  %12 = call i32 (...) @ArenaServers_Cache()
  %13 = call i32 (...) @StartServer_Cache()
  %14 = call i32 (...) @ServerOptions_Cache()
  %15 = call i32 (...) @DriverInfo_Cache()
  %16 = call i32 (...) @GraphicsOptions_Cache()
  %17 = call i32 (...) @UI_DisplayOptionsMenu_Cache()
  %18 = call i32 (...) @UI_SoundOptionsMenu_Cache()
  %19 = call i32 (...) @UI_NetworkOptionsMenu_Cache()
  %20 = call i32 (...) @UI_SPLevelMenu_Cache()
  %21 = call i32 (...) @UI_SPSkillMenu_Cache()
  %22 = call i32 (...) @UI_SPPostgameMenu_Cache()
  %23 = call i32 (...) @TeamMain_Cache()
  %24 = call i32 (...) @UI_AddBots_Cache()
  %25 = call i32 (...) @UI_RemoveBots_Cache()
  %26 = call i32 (...) @UI_SetupMenu_Cache()
  %27 = call i32 (...) @UI_BotSelectMenu_Cache()
  %28 = call i32 (...) @UI_CDKeyMenu_Cache()
  %29 = call i32 (...) @UI_ModsMenu_Cache()
  ret void
}

declare dso_local i32 @MainMenu_Cache(...) #1

declare dso_local i32 @InGame_Cache(...) #1

declare dso_local i32 @ConfirmMenu_Cache(...) #1

declare dso_local i32 @PlayerModel_Cache(...) #1

declare dso_local i32 @PlayerSettings_Cache(...) #1

declare dso_local i32 @Controls_Cache(...) #1

declare dso_local i32 @Demos_Cache(...) #1

declare dso_local i32 @UI_CinematicsMenu_Cache(...) #1

declare dso_local i32 @Preferences_Cache(...) #1

declare dso_local i32 @ServerInfo_Cache(...) #1

declare dso_local i32 @SpecifyServer_Cache(...) #1

declare dso_local i32 @ArenaServers_Cache(...) #1

declare dso_local i32 @StartServer_Cache(...) #1

declare dso_local i32 @ServerOptions_Cache(...) #1

declare dso_local i32 @DriverInfo_Cache(...) #1

declare dso_local i32 @GraphicsOptions_Cache(...) #1

declare dso_local i32 @UI_DisplayOptionsMenu_Cache(...) #1

declare dso_local i32 @UI_SoundOptionsMenu_Cache(...) #1

declare dso_local i32 @UI_NetworkOptionsMenu_Cache(...) #1

declare dso_local i32 @UI_SPLevelMenu_Cache(...) #1

declare dso_local i32 @UI_SPSkillMenu_Cache(...) #1

declare dso_local i32 @UI_SPPostgameMenu_Cache(...) #1

declare dso_local i32 @TeamMain_Cache(...) #1

declare dso_local i32 @UI_AddBots_Cache(...) #1

declare dso_local i32 @UI_RemoveBots_Cache(...) #1

declare dso_local i32 @UI_SetupMenu_Cache(...) #1

declare dso_local i32 @UI_BotSelectMenu_Cache(...) #1

declare dso_local i32 @UI_CDKeyMenu_Cache(...) #1

declare dso_local i32 @UI_ModsMenu_Cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
