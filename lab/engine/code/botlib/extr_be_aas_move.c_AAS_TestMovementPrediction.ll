; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_TestMovementPrediction.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_TestMovementPrediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i8*)* }
%struct.TYPE_4__ = type { i32 }

@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@SE_HITGROUND = common dso_local global i32 0, align 4
@SE_LEAVEGROUND = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"leave ground\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_TestMovementPrediction(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @VectorClear(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @AAS_Swimming(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @VectorNormalize(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @VectorScale(i32* %21, i32 400, i32* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 224, i32* %25, align 4
  %26 = call i32 (...) @AAS_ClearShownDebugLines()
  %27 = load i32, i32* %4, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @PRESENCE_NORMAL, align 4
  %30 = load i32, i32* @qtrue, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @SE_HITGROUND, align 4
  %34 = load i32, i32* @qtrue, align 4
  %35 = call i32 @AAS_PredictClientMovement(%struct.TYPE_4__* %9, i32 %27, i32* %28, i32 %29, i32 %30, i32* %31, i32* %32, i32 13, i32 13, float 0x3FB99999A0000000, i32 %33, i32 0, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SE_LEAVEGROUND, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %18
  %42 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @botimport, i32 0, i32 0), align 8
  %43 = load i32, i32* @PRT_MESSAGE, align 4
  %44 = call i32 %42(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %18
  ret void
}

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @AAS_Swimming(i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @VectorScale(i32*, i32, i32*) #1

declare dso_local i32 @AAS_ClearShownDebugLines(...) #1

declare dso_local i32 @AAS_PredictClientMovement(%struct.TYPE_4__*, i32, i32*, i32, i32, i32*, i32*, i32, i32, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
