; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_InitLevelItemHeap.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_InitLevelItemHeap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@levelitemheap = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"max_levelitems\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@freelevelitems = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitLevelItemHeap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @levelitemheap, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @levelitemheap, align 8
  %7 = call i32 @FreeMemory(%struct.TYPE_5__* %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i64 @LibVarValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @GetClearedMemory(i32 %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** @levelitemheap, align 8
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %33, %8
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @levelitemheap, align 8
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @levelitemheap, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %32, align 8
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @levelitemheap, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @levelitemheap, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** @freelevelitems, align 8
  ret void
}

declare dso_local i32 @FreeMemory(%struct.TYPE_5__*) #1

declare dso_local i64 @LibVarValue(i8*, i8*) #1

declare dso_local i64 @GetClearedMemory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
