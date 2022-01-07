; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawSpectator.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawSpectator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"SPECTATOR\00", align 1
@cgs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"waiting to play\00", align 1
@GT_TEAM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"press ESC and use the JOIN menu to play\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawSpectator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawSpectator() #0 {
  %1 = call i32 @CG_DrawBigString(i32 248, i32 440, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), float 1.000000e+00)
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %3 = load i64, i64* @GT_TOURNAMENT, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @CG_DrawBigString(i32 200, i32 460, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), float 1.000000e+00)
  br label %14

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %9 = load i64, i64* @GT_TEAM, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @CG_DrawBigString(i32 8, i32 460, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), float 1.000000e+00)
  br label %13

13:                                               ; preds = %11, %7
  br label %14

14:                                               ; preds = %13, %5
  ret void
}

declare dso_local i32 @CG_DrawBigString(i32, i32, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
