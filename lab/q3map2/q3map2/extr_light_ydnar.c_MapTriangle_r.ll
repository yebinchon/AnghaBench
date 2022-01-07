; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapTriangle_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapTriangle_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float** }

@subdivideThreshold = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_9__**, i32, i32*, i32*)* @MapTriangle_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MapTriangle_r(i32* %0, i32* %1, %struct.TYPE_9__** %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca [3 x %struct.TYPE_9__*], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 -1, i32* %15, align 4
  store float 0.000000e+00, float* %22, align 4
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %75, %6
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %78

26:                                               ; preds = %23
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %27, i64 %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load float**, float*** %32, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 0
  %35 = load float*, float** %34, align 8
  store float* %35, float** %17, align 8
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, 1
  %39 = srem i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 %40
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load float**, float*** %43, align 8
  %45 = getelementptr inbounds float*, float** %44, i64 0
  %46 = load float*, float** %45, align 8
  store float* %46, float** %18, align 8
  %47 = load float*, float** %17, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %18, align 8
  %51 = getelementptr inbounds float, float* %50, i64 0
  %52 = load float, float* %51, align 4
  %53 = fsub float %49, %52
  store float %53, float* %19, align 4
  %54 = load float*, float** %17, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %18, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = fsub float %56, %59
  store float %60, float* %20, align 4
  %61 = load float, float* %19, align 4
  %62 = load float, float* %19, align 4
  %63 = fmul float %61, %62
  %64 = load float, float* %20, align 4
  %65 = load float, float* %20, align 4
  %66 = fmul float %64, %65
  %67 = fadd float %63, %66
  store float %67, float* %21, align 4
  %68 = load float, float* %21, align 4
  %69 = load float, float* %22, align 4
  %70 = fcmp ogt float %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %26
  %72 = load float, float* %21, align 4
  store float %72, float* %22, align 4
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %71, %26
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %23

78:                                               ; preds = %23
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load float, float* %22, align 4
  %83 = load float, float* @subdivideThreshold, align 4
  %84 = fcmp ole float %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %78
  br label %132

86:                                               ; preds = %81
  %87 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %87, i64 %89
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  %95 = srem i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %92, i64 %96
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = call i32 @LerpDrawVert(%struct.TYPE_9__* %91, %struct.TYPE_9__* %98, %struct.TYPE_9__* %13)
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @MapSingleLuxel(i32* %100, i32* %101, %struct.TYPE_9__* %13, i32 %102, i32 1, i32* %103, i32* %104)
  %106 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %107 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %14, i64 0, i64 0
  %108 = call i32 @VectorCopy(%struct.TYPE_9__** %106, %struct.TYPE_9__** %107)
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %14, i64 0, i64 %110
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %111, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %14, i64 0, i64 0
  %115 = load i32, i32* %10, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = load i32*, i32** %12, align 8
  call void @MapTriangle_r(i32* %112, i32* %113, %struct.TYPE_9__** %114, i32 %115, i32* %116, i32* %117)
  %118 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %119 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %14, i64 0, i64 0
  %120 = call i32 @VectorCopy(%struct.TYPE_9__** %118, %struct.TYPE_9__** %119)
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  %123 = srem i32 %122, 3
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %14, i64 0, i64 %124
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %125, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds [3 x %struct.TYPE_9__*], [3 x %struct.TYPE_9__*]* %14, i64 0, i64 0
  %129 = load i32, i32* %10, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = load i32*, i32** %12, align 8
  call void @MapTriangle_r(i32* %126, i32* %127, %struct.TYPE_9__** %128, i32 %129, i32* %130, i32* %131)
  br label %132

132:                                              ; preds = %86, %85
  ret void
}

declare dso_local i32 @LerpDrawVert(%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @MapSingleLuxel(i32*, i32*, %struct.TYPE_9__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @VectorCopy(%struct.TYPE_9__**, %struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
