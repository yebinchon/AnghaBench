; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_InitReachability.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_InitReachability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 }

@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"forcereachability\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"grapplereach\00", align 1
@calcgrapplereach = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@areareachability = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_InitReachability() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 4), align 8
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %26

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 3), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = call i64 @LibVarGetValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = trunc i64 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  br label %26

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %14, %4
  %16 = call i64 @LibVarGetValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i64 %16, i64* @calcgrapplereach, align 8
  %17 = load i32, i32* @qtrue, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %18 = call i32 (...) @AAS_SetupReachabilityHeap()
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @GetClearedMemory(i32 %22)
  %24 = inttoptr i64 %23 to i32**
  store i32** %24, i32*** @areareachability, align 8
  %25 = call i32 (...) @AAS_SetWeaponJumpAreaFlags()
  br label %26

26:                                               ; preds = %15, %11, %3
  ret void
}

declare dso_local i64 @LibVarGetValue(i8*) #1

declare dso_local i32 @AAS_SetupReachabilityHeap(...) #1

declare dso_local i64 @GetClearedMemory(i32) #1

declare dso_local i32 @AAS_SetWeaponJumpAreaFlags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
