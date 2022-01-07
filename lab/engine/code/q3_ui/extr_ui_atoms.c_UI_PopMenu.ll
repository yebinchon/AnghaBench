; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_PopMenu.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_PopMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@menu_out_sound = common dso_local global i32 0, align 4
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"UI_PopMenu: menu stack underflow\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_PopMenu() #0 {
  %1 = load i32, i32* @menu_out_sound, align 4
  %2 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %3 = call i32 @trap_S_StartLocalSound(i32 %1, i32 %2)
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 8
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @trap_Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 2), align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 3), align 8
  %20 = load i32, i32* @qtrue, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 1), align 4
  br label %23

21:                                               ; preds = %10
  %22 = call i32 (...) @UI_ForceMenuOff()
  br label %23

23:                                               ; preds = %21, %13
  ret void
}

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

declare dso_local i32 @trap_Error(i8*) #1

declare dso_local i32 @UI_ForceMenuOff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
