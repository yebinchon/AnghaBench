; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotSetAvoidGoalTime.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotSetAvoidGoalTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_6__* }

@itemconfig = common dso_local global %struct.TYPE_7__* null, align 8
@levelitems = common dso_local global %struct.TYPE_6__* null, align 8
@AVOID_DEFAULT_TIME = common dso_local global float 0.000000e+00, align 4
@AVOID_MINIMUM_TIME = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotSetAvoidGoalTime(i32 %0, i32 %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32* @BotGoalStateFromHandle(i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %68

14:                                               ; preds = %3
  %15 = load float, float* %6, align 4
  %16 = fcmp olt float %15, 0.000000e+00
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemconfig, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %68

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @levelitems, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %8, align 8
  br label %23

23:                                               ; preds = %58, %21
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @itemconfig, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  store float %41, float* %6, align 4
  %42 = load float, float* %6, align 4
  %43 = fcmp une float %42, 0.000000e+00
  br i1 %43, label %46, label %44

44:                                               ; preds = %32
  %45 = load float, float* @AVOID_DEFAULT_TIME, align 4
  store float %45, float* %6, align 4
  br label %46

46:                                               ; preds = %44, %32
  %47 = load float, float* %6, align 4
  %48 = load float, float* @AVOID_MINIMUM_TIME, align 4
  %49 = fcmp olt float %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load float, float* @AVOID_MINIMUM_TIME, align 4
  store float %51, float* %6, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load float, float* %6, align 4
  %56 = call i32 @BotAddToAvoidGoals(i32* %53, i32 %54, float %55)
  br label %68

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %8, align 8
  br label %23

62:                                               ; preds = %23
  br label %68

63:                                               ; preds = %14
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load float, float* %6, align 4
  %67 = call i32 @BotAddToAvoidGoals(i32* %64, i32 %65, float %66)
  br label %68

68:                                               ; preds = %13, %20, %52, %62, %63
  ret void
}

declare dso_local i32* @BotGoalStateFromHandle(i32) #1

declare dso_local i32 @BotAddToAvoidGoals(i32*, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
