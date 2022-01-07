; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_xlp2_get_core_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_xlp2_get_core_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nlm_xlp2_get_core_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_xlp2_get_core_frequency(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = call i64 (...) @cpu_is_xlp9xx()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @nlm_get_clock_regbase(i32 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @SYS_9XX_CPU_PLL_CTRL0(i32 %18)
  %20 = call i32 @nlm_read_sys_reg(i64 %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @SYS_9XX_CPU_PLL_CTRL1(i32 %22)
  %24 = call i32 @nlm_read_sys_reg(i64 %21, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.TYPE_2__* @nlm_get_node(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @SYS_CPU_PLL_CTRL0(i32 %31)
  %33 = call i32 @nlm_read_sys_reg(i64 %30, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @SYS_CPU_PLL_CTRL1(i32 %35)
  %37 = call i32 @nlm_read_sys_reg(i64 %34, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %25, %14
  %39 = load i32, i32* %6, align 4
  %40 = lshr i32 %39, 24
  %41 = and i32 %40, 7
  switch i32 %41, label %47 [
    i32 1, label %42
    i32 3, label %43
    i32 7, label %44
    i32 6, label %45
    i32 0, label %46
  ]

42:                                               ; preds = %38
  store i32 2, i32* %5, align 4
  br label %48

43:                                               ; preds = %38
  store i32 4, i32* %5, align 4
  br label %48

44:                                               ; preds = %38
  store i32 8, i32* %5, align 4
  br label %48

45:                                               ; preds = %38
  store i32 16, i32* %5, align 4
  br label %48

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %38, %46
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %45, %44, %43, %42
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 63
  %51 = mul i32 100, %50
  %52 = add i32 1200, %51
  %53 = zext i32 %52 to i64
  %54 = mul i64 1000000, %53
  store i64 %54, i64* %9, align 8
  %55 = load i32, i32* %5, align 4
  %56 = mul i32 3, %55
  store i32 %56, i32* %8, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @do_div(i64 %57, i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i64 @nlm_get_clock_regbase(i32) #1

declare dso_local i32 @nlm_read_sys_reg(i64, i32) #1

declare dso_local i32 @SYS_9XX_CPU_PLL_CTRL0(i32) #1

declare dso_local i32 @SYS_9XX_CPU_PLL_CTRL1(i32) #1

declare dso_local %struct.TYPE_2__* @nlm_get_node(i32) #1

declare dso_local i32 @SYS_CPU_PLL_CTRL0(i32) #1

declare dso_local i32 @SYS_CPU_PLL_CTRL1(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
