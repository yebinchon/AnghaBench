; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/board/ox820/extr_ddr.c_ddr_setup.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/board/ox820/extr_ddr.c_ddr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ddr_setup.ddr_timing_parameters = internal global i32* @C_TP_DDR2_25_CL6_1GB, align 8
@C_TP_DDR2_25_CL6_1GB = common dso_local global i32 0, align 4
@ddr_setup.ddr_config_parameters = internal global i32* @C_CP_DDR2_25_CL6, align 8
@C_CP_DDR2_25_CL6 = common dso_local global i32 0, align 4
@C_BLKEN_DDR_ON = common dso_local global i32 0, align 4
@C_DDR_BLKEN_REG = common dso_local global i64 0, align 8
@DDR_ROUTE_CPU0_INSTR_SHIFT = common dso_local global i32 0, align 4
@DDR_ROUTE_CPU0_RDDATA_SHIFT = common dso_local global i32 0, align 4
@DDR_ROUTE_CPU0_WRDATA_SHIFT = common dso_local global i32 0, align 4
@DDR_ROUTE_CPU1_INSTR_SHIFT = common dso_local global i32 0, align 4
@DDR_ROUTE_CPU1_RDDATA_SHIFT = common dso_local global i32 0, align 4
@DDR_ROUTE_CPU1_WRDATA_SHIFT = common dso_local global i32 0, align 4
@C_DDR_TRANSACTION_ROUTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddr_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @C_BLKEN_DDR_ON, align 4
  %4 = load i64, i64* @C_DDR_BLKEN_REG, align 8
  %5 = inttoptr i64 %4 to i32*
  store volatile i32 %3, i32* %5, align 4
  %6 = load i32*, i32** @ddr_setup.ddr_timing_parameters, align 8
  %7 = call i32 @ddr_timing_initialisation(i32* %6)
  %8 = load i32*, i32** @ddr_setup.ddr_config_parameters, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @ddr_normal_initialisation(i32* %8, i32 %9)
  %11 = load i32, i32* @DDR_ROUTE_CPU0_INSTR_SHIFT, align 4
  %12 = shl i32 0, %11
  %13 = load i32, i32* @DDR_ROUTE_CPU0_RDDATA_SHIFT, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %12, %14
  %16 = load i32, i32* @DDR_ROUTE_CPU0_WRDATA_SHIFT, align 4
  %17 = shl i32 3, %16
  %18 = or i32 %15, %17
  %19 = load i32, i32* @DDR_ROUTE_CPU1_INSTR_SHIFT, align 4
  %20 = shl i32 2, %19
  %21 = or i32 %18, %20
  %22 = load i32, i32* @DDR_ROUTE_CPU1_RDDATA_SHIFT, align 4
  %23 = shl i32 3, %22
  %24 = or i32 %21, %23
  %25 = load i32, i32* @DDR_ROUTE_CPU1_WRDATA_SHIFT, align 4
  %26 = shl i32 3, %25
  %27 = or i32 %24, %26
  %28 = load i64, i64* @C_DDR_TRANSACTION_ROUTING, align 8
  %29 = inttoptr i64 %28 to i32*
  store volatile i32 %27, i32* %29, align 4
  %30 = load i32, i32* @C_BLKEN_DDR_ON, align 4
  %31 = add nsw i32 %30, 65535
  %32 = load i64, i64* @C_DDR_BLKEN_REG, align 8
  %33 = inttoptr i64 %32 to i32*
  store volatile i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @ddr_timing_initialisation(i32*) #1

declare dso_local i32 @ddr_normal_initialisation(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
