; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model_iqm.c_ComputeJointMats.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model_iqm.c_ComputeJointMats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, float*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, float, float*)* @ComputeJointMats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeJointMats(%struct.TYPE_4__* %0, i32 %1, i32 %2, float %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [12 x float], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load float*, float** %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load float*, float** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 12
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @Com_Memcpy(float* %19, float* %22, i32 %29)
  br label %66

31:                                               ; preds = %5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load float, float* %9, align 4
  %36 = load float*, float** %10, align 8
  %37 = call i32 @ComputePoseMats(%struct.TYPE_4__* %32, i32 %33, i32 %34, float %35, float* %36)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %63, %31
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load float*, float** %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 12, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %45, i64 %48
  store float* %49, float** %11, align 8
  %50 = getelementptr inbounds [12 x float], [12 x float]* %13, i64 0, i64 0
  %51 = load float*, float** %11, align 8
  %52 = call i32 @Com_Memcpy(float* %50, float* %51, i32 48)
  %53 = getelementptr inbounds [12 x float], [12 x float]* %13, i64 0, i64 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load float*, float** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 12, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %56, i64 %59
  %61 = load float*, float** %11, align 8
  %62 = call i32 @Matrix34Multiply(float* %53, float* %60, float* %61)
  br label %63

63:                                               ; preds = %44
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %38

66:                                               ; preds = %18, %38
  ret void
}

declare dso_local i32 @Com_Memcpy(float*, float*, i32) #1

declare dso_local i32 @ComputePoseMats(%struct.TYPE_4__*, i32, i32, float, float*) #1

declare dso_local i32 @Matrix34Multiply(float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
