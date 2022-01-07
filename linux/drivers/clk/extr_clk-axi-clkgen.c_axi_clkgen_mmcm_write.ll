; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_mmcm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_mmcm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_clkgen = type { i32 }

@AXI_CLKGEN_V2_DRP_CNTRL_SEL = common dso_local global i32 0, align 4
@AXI_CLKGEN_V2_REG_DRP_CNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axi_clkgen*, i32, i32, i32)* @axi_clkgen_mmcm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.axi_clkgen*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.axi_clkgen* %0, %struct.axi_clkgen** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.axi_clkgen*, %struct.axi_clkgen** %6, align 8
  %13 = call i32 @axi_clkgen_wait_non_busy(%struct.axi_clkgen* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %44

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 65535
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.axi_clkgen*, %struct.axi_clkgen** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @axi_clkgen_mmcm_read(%struct.axi_clkgen* %22, i32 %23, i32* %10)
  %25 = load i32, i32* %9, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* @AXI_CLKGEN_V2_DRP_CNTRL_SEL, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %33, %36
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load %struct.axi_clkgen*, %struct.axi_clkgen** %6, align 8
  %41 = load i32, i32* @AXI_CLKGEN_V2_REG_DRP_CNTRL, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @axi_clkgen_write(%struct.axi_clkgen* %40, i32 %41, i32 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %29, %16
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @axi_clkgen_wait_non_busy(%struct.axi_clkgen*) #1

declare dso_local i32 @axi_clkgen_mmcm_read(%struct.axi_clkgen*, i32, i32*) #1

declare dso_local i32 @axi_clkgen_write(%struct.axi_clkgen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
