; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_NextEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_NextEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@selectedArenaSet = common dso_local global i64 0, align 8
@currentSet = common dso_local global i64 0, align 8
@selectedArena = common dso_local global i32 0, align 4
@levelMenuInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @UI_SPLevelMenu_NextEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SPLevelMenu_NextEvent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %21

9:                                                ; preds = %2
  %10 = load i64, i64* @selectedArenaSet, align 8
  %11 = load i64, i64* @currentSet, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %21

14:                                               ; preds = %9
  %15 = load i32, i32* @selectedArena, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* @selectedArena, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 4
  %20 = call i32 @UI_SPSkillMenu(i32 %19)
  br label %21

21:                                               ; preds = %18, %13, %8
  ret void
}

declare dso_local i32 @UI_SPSkillMenu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
