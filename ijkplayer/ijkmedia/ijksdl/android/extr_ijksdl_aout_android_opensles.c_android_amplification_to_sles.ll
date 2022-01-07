; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_aout_android_opensles.c_android_amplification_to_sles.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_aout_android_opensles.c_android_amplification_to_sles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SL_MILLIBEL_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (float)* @android_amplification_to_sles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @android_amplification_to_sles(float %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca float, align 4
  %4 = alloca i64, align 8
  store float %0, float* %3, align 4
  %5 = load float, float* %3, align 4
  %6 = fpext float %5 to double
  %7 = fcmp olt double %6, 1.000000e-08
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @SL_MILLIBEL_MIN, align 8
  store i64 %9, i64* %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load float, float* %3, align 4
  %12 = call float @log10f(float %11) #2
  %13 = fmul float 2.000000e+03, %12
  %14 = call i64 @lroundf(float %13) #2
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @SL_MILLIBEL_MIN, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i64, i64* @SL_MILLIBEL_MIN, align 8
  store i64 %19, i64* %4, align 8
  br label %25

20:                                               ; preds = %10
  %21 = load i64, i64* %4, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %25, %8
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

; Function Attrs: nounwind
declare dso_local i64 @lroundf(float) #1

; Function Attrs: nounwind
declare dso_local float @log10f(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
