; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3_FaceOnWinding.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_bsp_q3.c_Q3_FaceOnWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@q3_drawVerts = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @Q3_FaceOnWinding(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @CopyWinding(i32* %15)
  store i32* %16, i32** %14, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %21 = call i32 @Q3_SurfacePlane(%struct.TYPE_6__* %17, i32 %19, i32* %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %80, %2
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32*, i32** %14, align 8
  %30 = icmp ne i32* %29, null
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i1 [ false, %22 ], [ %30, %28 ]
  br i1 %32, label %33, label %83

33:                                               ; preds = %31
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3_drawVerts, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = srem i32 %38, %41
  %43 = add nsw i32 %37, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q3_drawVerts, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = srem i32 %53, %56
  %58 = add nsw i32 %51, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @VectorSubtract(i32* %63, i32* %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @CrossProduct(i32 %67, i32 %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @VectorNormalize(i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = call float @DotProduct(i32 %74, i32* %75)
  store float %76, float* %7, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load float, float* %7, align 4
  %79 = call i32 @ChopWindingInPlace(i32** %14, i32 %77, float %78, double -1.000000e-01)
  br label %80

80:                                               ; preds = %33
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %22

83:                                               ; preds = %31
  %84 = load i32*, i32** %14, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32*, i32** %14, align 8
  %88 = call float @WindingArea(i32* %87)
  store float %88, float* %8, align 4
  %89 = load i32*, i32** %14, align 8
  %90 = call i32 @FreeWinding(i32* %89)
  %91 = load float, float* %8, align 4
  store float %91, float* %3, align 4
  br label %93

92:                                               ; preds = %83
  store float 0.000000e+00, float* %3, align 4
  br label %93

93:                                               ; preds = %92, %86
  %94 = load float, float* %3, align 4
  ret float %94
}

declare dso_local i32* @CopyWinding(i32*) #1

declare dso_local i32 @Q3_SurfacePlane(%struct.TYPE_6__*, i32, i32*) #1

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
