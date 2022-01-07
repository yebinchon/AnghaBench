; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotFreeGoalState.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotFreeGoalState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"goal state handle %d out of range\0A\00", align 1
@botgoalstates = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid goal state handle %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotFreeGoalState(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @MAX_CLIENTS, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5, %1
  %10 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %11 = load i32, i32* @PRT_FATAL, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 %10(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %39

14:                                               ; preds = %5
  %15 = load i32**, i32*** @botgoalstates, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %23 = load i32, i32* @PRT_FATAL, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 %22(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %39

26:                                               ; preds = %14
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @BotFreeItemWeights(i32 %27)
  %29 = load i32**, i32*** @botgoalstates, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @FreeMemory(i32* %33)
  %35 = load i32**, i32*** @botgoalstates, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %26, %21, %9
  ret void
}

declare dso_local i32 @BotFreeItemWeights(i32) #1

declare dso_local i32 @FreeMemory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
