; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_xlp_get_core_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_xlp_get_core_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SYS_POWER_ON_RESET_CFG = common dso_local global i32 0, align 4
@SYS_CORE_DFS_DIV_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nlm_xlp_get_core_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_xlp_get_core_frequency(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.TYPE_2__* @nlm_get_node(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i32, i32* @SYS_POWER_ON_RESET_CFG, align 4
  %20 = call i32 @nlm_read_sys_reg(i64 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %13, align 8
  %22 = load i32, i32* @SYS_CORE_DFS_DIV_VALUE, align 4
  %23 = call i32 @nlm_read_sys_reg(i64 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = lshr i32 %24, 10
  %26 = and i32 %25, 127
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %9, align 4
  %29 = lshr i32 %28, 8
  %30 = and i32 %29, 3
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = lshr i32 %32, 30
  %34 = and i32 %33, 3
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, 4
  %39 = lshr i32 %36, %38
  %40 = and i32 %39, 15
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 800000000, %43
  store i64 %44, i64* %12, align 8
  %45 = load i32, i32* %6, align 4
  %46 = mul i32 3, %45
  %47 = load i32, i32* %8, align 4
  %48 = mul i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = mul i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i64, i64* %12, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @do_div(i64 %51, i32 %52)
  %54 = load i64, i64* %12, align 8
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

declare dso_local %struct.TYPE_2__* @nlm_get_node(i32) #1

declare dso_local i32 @nlm_read_sys_reg(i64, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
