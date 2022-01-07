; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotTouchingGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotTouchingGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64*, i32 }

@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotTouchingGoal(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64* null, i64** %11, align 8
  store i64* null, i64** %12, align 8
  %13 = load i32, i32* @PRESENCE_NORMAL, align 4
  %14 = load i64*, i64** %7, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = call i32 @AAS_PresenceTypeBoundingBox(i32 %13, i64* %14, i64* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = call i32 @VectorSubtract(i64* %19, i64* %20, i64* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = call i32 @VectorSubtract(i64* %25, i64* %26, i64* %27)
  %29 = load i64*, i64** %9, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = call i32 @VectorAdd(i64* %29, i32 %32, i64* %33)
  %35 = load i64*, i64** %10, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = call i32 @VectorAdd(i64* %35, i32 %38, i64* %39)
  %41 = load i64*, i64** %10, align 8
  %42 = load i64*, i64** %11, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = call i32 @VectorSubtract(i64* %41, i64* %42, i64* %43)
  %45 = load i64*, i64** %9, align 8
  %46 = load i64*, i64** %12, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = call i32 @VectorSubtract(i64* %45, i64* %46, i64* %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %79, %2
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %82

52:                                               ; preds = %49
  %53 = load i64*, i64** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %57, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %52
  %65 = load i64*, i64** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %69, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %64, %52
  %77 = load i32, i32* @qfalse, align 4
  store i32 %77, i32* %3, align 4
  br label %84

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %49

82:                                               ; preds = %49
  %83 = load i32, i32* @qtrue, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %76
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @AAS_PresenceTypeBoundingBox(i32, i64*, i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @VectorAdd(i64*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
