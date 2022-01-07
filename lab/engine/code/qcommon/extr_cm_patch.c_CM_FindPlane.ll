; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_FindPlane.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_patch.c_CM_FindPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@numPlanes = common dso_local global i32 0, align 4
@planes = common dso_local global %struct.TYPE_2__* null, align 8
@PLANE_TRI_EPSILON = common dso_local global float 0.000000e+00, align 4
@MAX_PATCH_PLANES = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MAX_PATCH_PLANES\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, float*, float*)* @CM_FindPlane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CM_FindPlane(float* %0, float* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  %11 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %12 = load float*, float** %5, align 8
  %13 = load float*, float** %6, align 8
  %14 = load float*, float** %7, align 8
  %15 = call i32 @CM_PlaneFromPoints(float* %11, float* %12, float* %13, float* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %150

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %120, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @numPlanes, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %123

23:                                               ; preds = %19
  %24 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = call i64 @DotProduct(float* %24, i64* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %120

34:                                               ; preds = %23
  %35 = load float*, float** %5, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = call i64 @DotProduct(float* %35, i64* %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %42, %50
  %52 = sitofp i64 %51 to float
  store float %52, float* %10, align 4
  %53 = load float, float* %10, align 4
  %54 = load float, float* @PLANE_TRI_EPSILON, align 4
  %55 = fneg float %54
  %56 = fcmp olt float %53, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %34
  %58 = load float, float* %10, align 4
  %59 = load float, float* @PLANE_TRI_EPSILON, align 4
  %60 = fcmp ogt float %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %34
  br label %120

62:                                               ; preds = %57
  %63 = load float*, float** %6, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = call i64 @DotProduct(float* %63, i64* %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %70, %78
  %80 = sitofp i64 %79 to float
  store float %80, float* %10, align 4
  %81 = load float, float* %10, align 4
  %82 = load float, float* @PLANE_TRI_EPSILON, align 4
  %83 = fneg float %82
  %84 = fcmp olt float %81, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %62
  %86 = load float, float* %10, align 4
  %87 = load float, float* @PLANE_TRI_EPSILON, align 4
  %88 = fcmp ogt float %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %62
  br label %120

90:                                               ; preds = %85
  %91 = load float*, float** %7, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = call i64 @DotProduct(float* %91, i64* %97)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 3
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %98, %106
  %108 = sitofp i64 %107 to float
  store float %108, float* %10, align 4
  %109 = load float, float* %10, align 4
  %110 = load float, float* @PLANE_TRI_EPSILON, align 4
  %111 = fneg float %110
  %112 = fcmp olt float %109, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %90
  %114 = load float, float* %10, align 4
  %115 = load float, float* @PLANE_TRI_EPSILON, align 4
  %116 = fcmp ogt float %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %90
  br label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %150

120:                                              ; preds = %117, %89, %61, %33
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %19

123:                                              ; preds = %19
  %124 = load i32, i32* @numPlanes, align 4
  %125 = load i32, i32* @MAX_PATCH_PLANES, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @ERR_DROP, align 4
  %129 = call i32 @Com_Error(i32 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %123
  %131 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %133 = load i32, i32* @numPlanes, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = call i32 @Vector4Copy(float* %131, i64* %137)
  %139 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %140 = call i32 @CM_SignbitsForNormal(float* %139)
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @planes, align 8
  %142 = load i32, i32* @numPlanes, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  store i32 %140, i32* %145, align 8
  %146 = load i32, i32* @numPlanes, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @numPlanes, align 4
  %148 = load i32, i32* @numPlanes, align 4
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %130, %118, %17
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @CM_PlaneFromPoints(float*, float*, float*, float*) #1

declare dso_local i64 @DotProduct(float*, i64*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Vector4Copy(float*, i64*) #1

declare dso_local i32 @CM_SignbitsForNormal(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
