; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotTriggerMultipleActivateGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotTriggerMultipleActivateGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i64, i64, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@CONTENTS_TRIGGER = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotTriggerMultipleActivateGoal(i32* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %20 = load i32, i32* @qfalse, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @VectorClear(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %29 = call i32 @trap_AAS_ValueForBSPEpairKey(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i32 128)
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %31 = load i8, i8* %30, align 16
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %4, align 4
  br label %138

35:                                               ; preds = %3
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @qfalse, align 4
  store i32 %42, i32* %4, align 4
  br label %138

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @CONTENTS_TRIGGER, align 4
  %46 = load i32*, i32** %16, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = call i32 @BotModelMinsMaxs(i32 %44, i32 0, i32 %45, i32* %46, i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = call i32 @VectorAdd(i32* %49, i32* %50, i32* %51)
  %53 = load i32*, i32** %18, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = call i32 @VectorScale(i32* %53, double 5.000000e-01, i32* %54)
  %56 = load i32*, i32** %18, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 @VectorCopy(i32* %56, i32* %57)
  %59 = load i32*, i32** %19, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @VectorCopy(i32* %59, i32* %60)
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 24
  store i32 %65, i32* %63, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @VectorCopy(i32* %66, i32* %67)
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 100
  store i32 %72, i32* %70, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %76 = call i32 @trap_AAS_TraceAreas(i32* %73, i32* %74, i32* %75, i32* null, i32 10)
  store i32 %76, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %90, %43
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @trap_AAS_AreaReachability(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %93

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %77

93:                                               ; preds = %88, %77
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %93
  %98 = load i32*, i32** %18, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @VectorCopy(i32* %98, i32* %102)
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = load i32*, i32** %18, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @VectorSubtract(i32* %111, i32* %112, i32 %116)
  %118 = load i32*, i32** %17, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @VectorSubtract(i32* %118, i32* %119, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @qtrue, align 4
  store i32 %135, i32* %4, align 4
  br label %138

136:                                              ; preds = %93
  %137 = load i32, i32* @qfalse, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %97, %41, %33
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @trap_AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @BotModelMinsMaxs(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

declare dso_local i32 @VectorScale(i32*, double, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @trap_AAS_TraceAreas(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @trap_AAS_AreaReachability(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
