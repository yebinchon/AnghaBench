; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/cell/extr_spu_profiler.c_set_spu_profiling_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/cell/extr_spu_profiler.c_set_spu_profiling_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ppc_proc_freq = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@SCALE_SHIFT = common dso_local global i32 0, align 4
@profiling_interval = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_spu_profiling_frequency(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @ppc_proc_freq, align 4
  %10 = sdiv i32 %9, 1000
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @USEC_PER_SEC, align 4
  %13 = load i32, i32* @SCALE_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = udiv i32 %14, %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = mul i64 %18, %20
  %22 = load i32, i32* @SCALE_SHIFT, align 4
  %23 = zext i32 %22 to i64
  %24 = lshr i64 %21, %23
  store i64 %24, i64* @profiling_interval, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
