; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-zynq/extr_slcr.c_zynq_slcr_cpu_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-zynq/extr_slcr.c_zynq_slcr_cpu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLCR_A9_CPU_RST_CTRL_OFFSET = common dso_local global i32 0, align 4
@SLCR_A9_CPU_RST = common dso_local global i32 0, align 4
@SLCR_A9_CPU_CLKSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zynq_slcr_cpu_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @SLCR_A9_CPU_RST_CTRL_OFFSET, align 4
  %5 = call i32 @zynq_slcr_read(i32* %3, i32 %4)
  %6 = load i32, i32* @SLCR_A9_CPU_RST, align 4
  %7 = load i32, i32* %2, align 4
  %8 = shl i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SLCR_A9_CPU_RST_CTRL_OFFSET, align 4
  %14 = call i32 @zynq_slcr_write(i32 %12, i32 %13)
  %15 = load i32, i32* @SLCR_A9_CPU_CLKSTOP, align 4
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SLCR_A9_CPU_RST_CTRL_OFFSET, align 4
  %23 = call i32 @zynq_slcr_write(i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @zynq_slcr_cpu_state_write(i32 %24, i32 0)
  ret void
}

declare dso_local i32 @zynq_slcr_read(i32*, i32) #1

declare dso_local i32 @zynq_slcr_write(i32, i32) #1

declare dso_local i32 @zynq_slcr_cpu_state_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
