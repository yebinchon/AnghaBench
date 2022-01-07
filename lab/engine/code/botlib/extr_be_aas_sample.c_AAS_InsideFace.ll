; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_sample.c_AAS_InsideFace.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_sample.c_AAS_InsideFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_8__ = type { i32 (i32, i8*)* }
%struct.TYPE_6__ = type { i32, i32 }

@aasworld = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_InsideFace(%struct.TYPE_6__* %0, i32 %1, i32 %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 3), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %5, align 4
  br label %96

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %91, %22
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %23
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 0), align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 2), align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @abs(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %17, align 8
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 1), align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %46, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @VectorCopy(i32 %55, i32 %56)
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @aasworld, i32 0, i32 1), align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %61, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %58, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @VectorSubtract(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @VectorSubtract(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @AAS_OrthogonalToVectors(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call float @DotProduct(i32 %82, i32 %83)
  %85 = load float, float* %9, align 4
  %86 = fneg float %85
  %87 = fcmp olt float %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %29
  %89 = load i32, i32* @qfalse, align 4
  store i32 %89, i32* %5, align 4
  br label %96

90:                                               ; preds = %29
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %23

94:                                               ; preds = %23
  %95 = load i32, i32* @qtrue, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %88, %20
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @AAS_OrthogonalToVectors(i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
