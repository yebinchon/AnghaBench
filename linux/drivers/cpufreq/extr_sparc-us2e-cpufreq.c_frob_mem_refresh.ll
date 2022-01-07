; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sparc-us2e-cpufreq.c_frob_mem_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sparc-us2e-cpufreq.c_frob_mem_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCTRL0_REFR_INTERVAL = common dso_local global i64 0, align 8
@MCTRL0_REFR_CLKS_P_CNT = common dso_local global i64 0, align 8
@HBIRD_MEM_CNTL0_ADDR = common dso_local global i32 0, align 4
@MCTRL0_REFR_COUNT_MASK = common dso_local global i64 0, align 8
@MCTRL0_REFR_COUNT_SHIFT = common dso_local global i64 0, align 8
@MCTRL0_SREFRESH_ENAB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64)* @frob_mem_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frob_mem_refresh(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @MCTRL0_REFR_INTERVAL, align 8
  %15 = mul i64 %13, %14
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* @MCTRL0_REFR_CLKS_P_CNT, align 8
  %17 = load i64, i64* %8, align 8
  %18 = mul i64 %16, %17
  %19 = mul i64 %18, 1000000000
  %20 = load i64, i64* %10, align 8
  %21 = udiv i64 %20, %19
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* @HBIRD_MEM_CNTL0_ADDR, align 4
  %23 = call i64 @read_hbreg(i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @MCTRL0_REFR_COUNT_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* @MCTRL0_REFR_COUNT_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* @MCTRL0_REFR_COUNT_MASK, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %11, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @MCTRL0_REFR_COUNT_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = load i64, i64* %11, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %11, align 8
  %38 = load i32, i32* @HBIRD_MEM_CNTL0_ADDR, align 4
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @write_hbreg(i32 %38, i64 %39)
  %41 = load i32, i32* @HBIRD_MEM_CNTL0_ADDR, align 4
  %42 = call i64 @read_hbreg(i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %4
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @MCTRL0_SREFRESH_ENAB, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* @MCTRL0_REFR_CLKS_P_CNT, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %52, %53
  %55 = mul i64 %51, %54
  %56 = mul i64 %55, 1000000
  %57 = load i64, i64* %7, align 8
  %58 = mul i64 %56, %57
  %59 = load i64, i64* %6, align 8
  %60 = udiv i64 %58, %59
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  %63 = call i32 @udelay(i64 %62)
  br label %64

64:                                               ; preds = %50, %45, %4
  ret void
}

declare dso_local i64 @read_hbreg(i32) #1

declare dso_local i32 @write_hbreg(i32, i64) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
