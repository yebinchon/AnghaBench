; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_spreset.c_Reset_MenuEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_spreset.c_Reset_MenuEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@ID_NO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"ui_spSelection\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Reset_MenuEvent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %23

9:                                                ; preds = %2
  %10 = call i32 (...) @UI_PopMenu()
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ID_NO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %23

18:                                               ; preds = %9
  %19 = call i32 (...) @UI_NewGame()
  %20 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  %21 = call i32 (...) @UI_PopMenu()
  %22 = call i32 (...) @UI_SPLevelMenu()
  br label %23

23:                                               ; preds = %18, %17, %8
  ret void
}

declare dso_local i32 @UI_PopMenu(...) #1

declare dso_local i32 @UI_NewGame(...) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @UI_SPLevelMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
