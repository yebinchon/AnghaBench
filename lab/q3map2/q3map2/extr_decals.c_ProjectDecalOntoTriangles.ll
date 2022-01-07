; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_ProjectDecalOntoTriangles.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_ProjectDecalOntoTriangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64** }
%struct.TYPE_16__ = type { i64, i64, i32, i64*, %struct.TYPE_14__*, i64, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32, i64** }

@SURFACE_TRIANGLES = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_18__* null, align 8
@entityOrigin = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*)* @ProjectDecalOntoTriangles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProjectDecalOntoTriangles(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SURFACE_TRIANGLES, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %140

22:                                               ; preds = %14, %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** @mapplanes, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = call i32 @VectorCopy(i32 %34, i64* %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** @mapplanes, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to float
  %45 = load i64*, i64** %6, align 8
  %46 = load i64*, i64** @entityOrigin, align 8
  %47 = call float @DotProduct(i64* %45, i64* %46)
  %48 = fadd float %44, %47
  %49 = fptosi float %48 to i64
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64**, i64*** %53, align 8
  %55 = getelementptr inbounds i64*, i64** %54, i64 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = call float @DotProduct(i64* %56, i64* %57)
  store float %58, float* %7, align 4
  %59 = load float, float* %7, align 4
  %60 = fcmp olt float %59, 0xBF1A36E2E0000000
  br i1 %60, label %61, label %62

61:                                               ; preds = %27
  br label %140

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62, %22
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %137, %63
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %140

70:                                               ; preds = %64
  %71 = call %struct.TYPE_15__* @AllocWinding(i32 3)
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %8, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i32 3, i32* %73, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i64**, i64*** %88, align 8
  %90 = getelementptr inbounds i64*, i64** %89, i64 0
  %91 = load i64*, i64** %90, align 8
  %92 = call i32 @VectorCopy(i32 %86, i64* %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i64**, i64*** %108, align 8
  %110 = getelementptr inbounds i64*, i64** %109, i64 1
  %111 = load i64*, i64** %110, align 8
  %112 = call i32 @VectorCopy(i32 %106, i64* %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 3
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i64**, i64*** %128, align 8
  %130 = getelementptr inbounds i64*, i64** %129, i64 2
  %131 = load i64*, i64** %130, align 8
  %132 = call i32 @VectorCopy(i32 %126, i64* %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = call i32 @ProjectDecalOntoWinding(%struct.TYPE_17__* %133, %struct.TYPE_16__* %134, %struct.TYPE_15__* %135)
  br label %137

137:                                              ; preds = %70
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 3
  store i32 %139, i32* %5, align 4
  br label %64

140:                                              ; preds = %21, %61, %64
  ret void
}

declare dso_local i32 @VectorCopy(i32, i64*) #1

declare dso_local float @DotProduct(i64*, i64*) #1

declare dso_local %struct.TYPE_15__* @AllocWinding(i32) #1

declare dso_local i32 @ProjectDecalOntoWinding(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
