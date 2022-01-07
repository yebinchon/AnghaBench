; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_PowerupTimerSounds.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_PowerupTimerSounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MAX_POWERUPS = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@POWERUP_BLINKS = common dso_local global i32 0, align 4
@POWERUP_BLINK_TIME = common dso_local global i32 0, align 4
@CHAN_ITEM = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_PowerupTimerSounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_PowerupTimerSounds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %50, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_POWERUPS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %53

7:                                                ; preds = %3
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %50

20:                                               ; preds = %7
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @POWERUP_BLINKS, align 4
  %25 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %26 = mul nsw i32 %24, %25
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %50

29:                                               ; preds = %20
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %34 = sdiv i32 %32, %33
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* @POWERUP_BLINK_TIME, align 4
  %39 = sdiv i32 %37, %38
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CHAN_ITEM, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0, i32 0), align 4
  %48 = call i32 @trap_S_StartSound(i32* null, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %29
  br label %50

50:                                               ; preds = %49, %28, %19
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %3

53:                                               ; preds = %3
  ret void
}

declare dso_local i32 @trap_S_StartSound(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
