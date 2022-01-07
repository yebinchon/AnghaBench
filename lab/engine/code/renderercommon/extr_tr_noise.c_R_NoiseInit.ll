; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_noise.c_R_NoiseInit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_noise.c_R_NoiseInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOISE_SIZE = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global i64 0, align 8
@s_noise_table = common dso_local global float* null, align 8
@s_noise_perm = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_NoiseInit() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %29, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NOISE_SIZE, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = call float (...) @rand()
  %8 = load i64, i64* @RAND_MAX, align 8
  %9 = sitofp i64 %8 to float
  %10 = fdiv float %7, %9
  %11 = fpext float %10 to double
  %12 = fmul double %11, 2.000000e+00
  %13 = fsub double %12, 1.000000e+00
  %14 = fptrunc double %13 to float
  %15 = load float*, float** @s_noise_table, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %15, i64 %17
  store float %14, float* %18, align 4
  %19 = call float (...) @rand()
  %20 = load i64, i64* @RAND_MAX, align 8
  %21 = sitofp i64 %20 to float
  %22 = fdiv float %19, %21
  %23 = fmul float %22, 2.550000e+02
  %24 = fptoui float %23 to i8
  %25 = load i8*, i8** @s_noise_perm, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 %24, i8* %28, align 1
  br label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %2

32:                                               ; preds = %2
  ret void
}

declare dso_local float @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
