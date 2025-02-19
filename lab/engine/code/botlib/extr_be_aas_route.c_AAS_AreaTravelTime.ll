; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_AreaTravelTime.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_AreaTravelTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISTANCEFACTOR_CROUCH = common dso_local global float 0.000000e+00, align 4
@DISTANCEFACTOR_SWIM = common dso_local global float 0.000000e+00, align 4
@DISTANCEFACTOR_WALK = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @AAS_AreaTravelTime(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @VectorSubtract(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* %9, align 4
  %15 = call float @VectorLength(i32 %14)
  store float %15, float* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @AAS_AreaCrouch(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load float, float* @DISTANCEFACTOR_CROUCH, align 4
  %21 = load float, float* %8, align 4
  %22 = fmul float %21, %20
  store float %22, float* %8, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @AAS_AreaSwim(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load float, float* @DISTANCEFACTOR_SWIM, align 4
  %29 = load float, float* %8, align 4
  %30 = fmul float %29, %28
  store float %30, float* %8, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load float, float* @DISTANCEFACTOR_WALK, align 4
  %33 = load float, float* %8, align 4
  %34 = fmul float %33, %32
  store float %34, float* %8, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %19
  %37 = load float, float* %8, align 4
  %38 = fptosi float %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %7, align 4
  %44 = trunc i32 %43 to i16
  ret i16 %44
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i64 @AAS_AreaCrouch(i32) #1

declare dso_local i64 @AAS_AreaSwim(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
