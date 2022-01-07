; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_addbots.c_UI_AddBots_Cache.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_addbots.c_UI_AddBots_Cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ART_BACK0 = common dso_local global i32 0, align 4
@ART_BACK1 = common dso_local global i32 0, align 4
@ART_FIGHT0 = common dso_local global i32 0, align 4
@ART_FIGHT1 = common dso_local global i32 0, align 4
@ART_BACKGROUND = common dso_local global i32 0, align 4
@ART_ARROWS = common dso_local global i32 0, align 4
@ART_ARROWUP = common dso_local global i32 0, align 4
@ART_ARROWDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_AddBots_Cache() #0 {
  %1 = load i32, i32* @ART_BACK0, align 4
  %2 = call i32 @trap_R_RegisterShaderNoMip(i32 %1)
  %3 = load i32, i32* @ART_BACK1, align 4
  %4 = call i32 @trap_R_RegisterShaderNoMip(i32 %3)
  %5 = load i32, i32* @ART_FIGHT0, align 4
  %6 = call i32 @trap_R_RegisterShaderNoMip(i32 %5)
  %7 = load i32, i32* @ART_FIGHT1, align 4
  %8 = call i32 @trap_R_RegisterShaderNoMip(i32 %7)
  %9 = load i32, i32* @ART_BACKGROUND, align 4
  %10 = call i32 @trap_R_RegisterShaderNoMip(i32 %9)
  %11 = load i32, i32* @ART_ARROWS, align 4
  %12 = call i32 @trap_R_RegisterShaderNoMip(i32 %11)
  %13 = load i32, i32* @ART_ARROWUP, align 4
  %14 = call i32 @trap_R_RegisterShaderNoMip(i32 %13)
  %15 = load i32, i32* @ART_ARROWDOWN, align 4
  %16 = call i32 @trap_R_RegisterShaderNoMip(i32 %15)
  ret void
}

declare dso_local i32 @trap_R_RegisterShaderNoMip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
