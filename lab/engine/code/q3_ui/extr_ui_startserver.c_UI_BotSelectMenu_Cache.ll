; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_UI_BotSelectMenu_Cache.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_UI_BotSelectMenu_Cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOTSELECT_BACK0 = common dso_local global i32 0, align 4
@BOTSELECT_BACK1 = common dso_local global i32 0, align 4
@BOTSELECT_ACCEPT0 = common dso_local global i32 0, align 4
@BOTSELECT_ACCEPT1 = common dso_local global i32 0, align 4
@BOTSELECT_SELECT = common dso_local global i32 0, align 4
@BOTSELECT_SELECTED = common dso_local global i32 0, align 4
@BOTSELECT_ARROWS = common dso_local global i32 0, align 4
@BOTSELECT_ARROWSL = common dso_local global i32 0, align 4
@BOTSELECT_ARROWSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_BotSelectMenu_Cache() #0 {
  %1 = load i32, i32* @BOTSELECT_BACK0, align 4
  %2 = call i32 @trap_R_RegisterShaderNoMip(i32 %1)
  %3 = load i32, i32* @BOTSELECT_BACK1, align 4
  %4 = call i32 @trap_R_RegisterShaderNoMip(i32 %3)
  %5 = load i32, i32* @BOTSELECT_ACCEPT0, align 4
  %6 = call i32 @trap_R_RegisterShaderNoMip(i32 %5)
  %7 = load i32, i32* @BOTSELECT_ACCEPT1, align 4
  %8 = call i32 @trap_R_RegisterShaderNoMip(i32 %7)
  %9 = load i32, i32* @BOTSELECT_SELECT, align 4
  %10 = call i32 @trap_R_RegisterShaderNoMip(i32 %9)
  %11 = load i32, i32* @BOTSELECT_SELECTED, align 4
  %12 = call i32 @trap_R_RegisterShaderNoMip(i32 %11)
  %13 = load i32, i32* @BOTSELECT_ARROWS, align 4
  %14 = call i32 @trap_R_RegisterShaderNoMip(i32 %13)
  %15 = load i32, i32* @BOTSELECT_ARROWSL, align 4
  %16 = call i32 @trap_R_RegisterShaderNoMip(i32 %15)
  %17 = load i32, i32* @BOTSELECT_ARROWSR, align 4
  %18 = call i32 @trap_R_RegisterShaderNoMip(i32 %17)
  ret void
}

declare dso_local i32 @trap_R_RegisterShaderNoMip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
