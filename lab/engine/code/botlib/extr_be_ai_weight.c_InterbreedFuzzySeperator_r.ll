; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weight.c_InterbreedFuzzySeperator_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weight.c_InterbreedFuzzySeperator_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i8*)* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@botimport = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot interbreed weight configs, unequal child\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@WT_BALANCE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"cannot interbreed weight configs, unequal balance\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"cannot interbreed weight configs, unequal next\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InterbreedFuzzySeperator_r(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %12
  %23 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @botimport, i32 0, i32 0), align 8
  %24 = load i32, i32* @PRT_ERROR, align 4
  %25 = call i32 %23(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %4, align 4
  br label %142

27:                                               ; preds = %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @InterbreedFuzzySeperator_r(%struct.TYPE_6__* %30, %struct.TYPE_6__* %33, %struct.TYPE_6__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @qfalse, align 4
  store i32 %40, i32* %4, align 4
  br label %142

41:                                               ; preds = %27
  br label %105

42:                                               ; preds = %3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WT_BALANCE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %104

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WT_BALANCE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @WT_BALANCE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54, %48
  %61 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @botimport, i32 0, i32 0), align 8
  %62 = load i32, i32* @PRT_ERROR, align 4
  %63 = call i32 %61(i32 %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @qfalse, align 4
  store i32 %64, i32* %4, align 4
  br label %142

65:                                               ; preds = %54
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %68, %71
  %73 = sdiv i32 %72, 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %65
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %65
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %89
  br label %104

104:                                              ; preds = %103, %42
  br label %105

105:                                              ; preds = %104, %41
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = icmp ne %struct.TYPE_6__* %108, null
  br i1 %109, label %110, label %140

110:                                              ; preds = %105
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = icmp ne %struct.TYPE_6__* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = icmp ne %struct.TYPE_6__* %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %115, %110
  %121 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @botimport, i32 0, i32 0), align 8
  %122 = load i32, i32* @PRT_ERROR, align 4
  %123 = call i32 %121(i32 %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @qfalse, align 4
  store i32 %124, i32* %4, align 4
  br label %142

125:                                              ; preds = %115
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = call i32 @InterbreedFuzzySeperator_r(%struct.TYPE_6__* %128, %struct.TYPE_6__* %131, %struct.TYPE_6__* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %125
  %138 = load i32, i32* @qfalse, align 4
  store i32 %138, i32* %4, align 4
  br label %142

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139, %105
  %141 = load i32, i32* @qtrue, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %137, %120, %60, %39, %22
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
