; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_AdjustBrushesForOrigin.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_AdjustBrushesForOrigin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i64 }

@mapplanes = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AdjustBrushesForOrigin(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %6, align 8
  br label %11

11:                                               ; preds = %64, %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  br i1 %13, label %14, label %68

14:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %58, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i64 %26
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %4, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** @mapplanes, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** @mapplanes, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @DotProduct(i32 %41, i32 %44)
  %46 = sub nsw i64 %34, %45
  store i64 %46, i64* %5, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** @mapplanes, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @FindFloatPlane(i32 %53, i64 %54, i32 0, i32* null)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %21
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %15

61:                                               ; preds = %15
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = call i32 @CreateBrushWindings(%struct.TYPE_15__* %62)
  br label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %6, align 8
  br label %11

68:                                               ; preds = %11
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %7, align 8
  br label %72

72:                                               ; preds = %115, %68
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = icmp ne %struct.TYPE_13__* %73, null
  br i1 %74, label %75, label %119

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %111, %75
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %81, %85
  %87 = icmp slt i32 %77, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %76
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @VectorSubtract(i32 %97, i32 %100, i32 %109)
  br label %111

111:                                              ; preds = %88
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %76

114:                                              ; preds = %76
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %7, align 8
  br label %72

119:                                              ; preds = %72
  ret void
}

declare dso_local i64 @DotProduct(i32, i32) #1

declare dso_local i64 @FindFloatPlane(i32, i64, i32, i32*) #1

declare dso_local i32 @CreateBrushWindings(%struct.TYPE_15__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
