; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_test.c_CM_StoreBrushes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_test.c_CM_StoreBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i64, i64*, i32*, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64, i64** }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64**, i64, i64, i64, i32 }

@cm = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@patch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_StoreBrushes(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 -1, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 5), align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 %15
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %122, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %125

23:                                               ; preds = %17
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 0), align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 4), align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %10, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 1), align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %23
  br label %122

43:                                               ; preds = %23
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cm, i32 0, i32 1), align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %92, %43
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %95

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64**, i64*** %52, align 8
  %54 = getelementptr inbounds i64*, i64** %53, i64 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64**, i64*** %61, align 8
  %63 = getelementptr inbounds i64*, i64** %62, i64 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %59, %68
  br i1 %69, label %90, label %70

70:                                               ; preds = %50
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64**, i64*** %72, align 8
  %74 = getelementptr inbounds i64*, i64** %73, i64 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64**, i64*** %81, align 8
  %83 = getelementptr inbounds i64*, i64** %82, i64 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp sle i64 %79, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %70, %50
  br label %95

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %47

95:                                               ; preds = %90, %47
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 3
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %122

99:                                               ; preds = %95
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @qtrue, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  br label %125

111:                                              ; preds = %99
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.TYPE_7__**
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %116, i64 %119
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %121, align 8
  br label %122

122:                                              ; preds = %111, %98, %42
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %17

125:                                              ; preds = %107, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
