; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q1.c_Q1_FaceOnWinding.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q1.c_Q1_FaceOnWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@q1_dplanes = common dso_local global i32* null, align 8
@q1_dsurfedges = common dso_local global i32* null, align 8
@q1_dvertexes = common dso_local global %struct.TYPE_9__* null, align 8
@q1_dedges = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @Q1_FaceOnWinding(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @CopyWinding(i32* %17)
  store i32* %18, i32** %16, align 8
  %19 = load i32*, i32** @q1_dplanes, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i32 @memcpy(%struct.TYPE_7__* %11, i32* %23, i32 8)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @VectorNegate(i32 %31, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 0, %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %29, %2
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %112, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %16, align 8
  %48 = icmp ne i32* %47, null
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi i1 [ false, %40 ], [ %48, %46 ]
  br i1 %50, label %51, label %115

51:                                               ; preds = %49
  %52 = load i32*, i32** @q1_dsurfedges, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @q1_dvertexes, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @q1_dedges, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @abs(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %12, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @q1_dvertexes, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @q1_dedges, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @abs(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %84, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %13, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @VectorSubtract(i32* %95, i32* %96, i32 %97)
  %99 = load i32, i32* %15, align 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @CrossProduct(i32 %99, i32 %101, i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @VectorNormalize(i32 %104)
  %106 = load i32, i32* %14, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = call float @DotProduct(i32 %106, i32* %107)
  store float %108, float* %9, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load float, float* %9, align 4
  %111 = call i32 @ChopWindingInPlace(i32** %16, i32 %109, float %110, double 9.000000e-01)
  br label %112

112:                                              ; preds = %51
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %40

115:                                              ; preds = %49
  %116 = load i32*, i32** %16, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32*, i32** %16, align 8
  %120 = call float @WindingArea(i32* %119)
  store float %120, float* %10, align 4
  %121 = load i32*, i32** %16, align 8
  %122 = call i32 @FreeWinding(i32* %121)
  %123 = load float, float* %10, align 4
  store float %123, float* %3, align 4
  br label %125

124:                                              ; preds = %115
  store float 0.000000e+00, float* %3, align 4
  br label %125

125:                                              ; preds = %124, %118
  %126 = load float, float* %3, align 4
  ret float %126
}

declare dso_local i32* @CopyWinding(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @VectorNegate(i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local float @DotProduct(i32, i32*) #1

declare dso_local i32 @ChopWindingInPlace(i32**, i32, float, double) #1

declare dso_local float @WindingArea(i32*) #1

declare dso_local i32 @FreeWinding(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
