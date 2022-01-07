; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_Animate.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_Animate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@pm = common dso_local global %struct.TYPE_6__* null, align 8
@BUTTON_GESTURE = common dso_local global i32 0, align 4
@TORSO_GESTURE = common dso_local global i32 0, align 4
@TIMER_GESTURE = common dso_local global i32 0, align 4
@EV_TAUNT = common dso_local global i32 0, align 4
@BUTTON_AFFIRMATIVE = common dso_local global i32 0, align 4
@BUTTON_FOLLOWME = common dso_local global i32 0, align 4
@BUTTON_GETFLAG = common dso_local global i32 0, align 4
@BUTTON_GUARDBASE = common dso_local global i32 0, align 4
@BUTTON_NEGATIVE = common dso_local global i32 0, align 4
@BUTTON_PATROL = common dso_local global i32 0, align 4
@TORSO_AFFIRMATIVE = common dso_local global i32 0, align 4
@TORSO_FOLLOWME = common dso_local global i32 0, align 4
@TORSO_GETFLAG = common dso_local global i32 0, align 4
@TORSO_GUARDBASE = common dso_local global i32 0, align 4
@TORSO_NEGATIVE = common dso_local global i32 0, align 4
@TORSO_PATROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_Animate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_Animate() #0 {
  %1 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %2 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* @BUTTON_GESTURE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load i32, i32* @TORSO_GESTURE, align 4
  %17 = call i32 @PM_StartTorsoAnim(i32 %16)
  %18 = load i32, i32* @TIMER_GESTURE, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @EV_TAUNT, align 4
  %24 = call i32 @PM_AddEvent(i32 %23)
  br label %25

25:                                               ; preds = %15, %8
  br label %26

26:                                               ; preds = %25, %0
  ret void
}

declare dso_local i32 @PM_StartTorsoAnim(i32) #1

declare dso_local i32 @PM_AddEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
