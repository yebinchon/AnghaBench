; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcr.c_n2_pcr_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcr.c_n2_pcr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCR_N2_HTRACE = common dso_local global i32 0, align 4
@HV_N2_PERF_SPARC_CTL = common dso_local global i32 0, align 4
@HV_EOK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @n2_pcr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n2_pcr_write(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PCR_N2_HTRACE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* @HV_N2_PERF_SPARC_CTL, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @sun4v_niagara2_setperf(i32 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @HV_EOK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @direct_pcr_write(i64 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %14
  br label %30

26:                                               ; preds = %2
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @direct_pcr_write(i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @sun4v_niagara2_setperf(i32, i32) #1

declare dso_local i32 @direct_pcr_write(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
