; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_mmcm_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_mmcm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_clkgen = type { i32 }

@AXI_CLKGEN_V2_DRP_CNTRL_SEL = common dso_local global i32 0, align 4
@AXI_CLKGEN_V2_DRP_CNTRL_READ = common dso_local global i32 0, align 4
@AXI_CLKGEN_V2_REG_DRP_CNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axi_clkgen*, i32, i32*)* @axi_clkgen_mmcm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_clkgen_mmcm_read(%struct.axi_clkgen* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.axi_clkgen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.axi_clkgen* %0, %struct.axi_clkgen** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %11 = call i32 @axi_clkgen_wait_non_busy(%struct.axi_clkgen* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %37

16:                                               ; preds = %3
  %17 = load i32, i32* @AXI_CLKGEN_V2_DRP_CNTRL_SEL, align 4
  %18 = load i32, i32* @AXI_CLKGEN_V2_DRP_CNTRL_READ, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 16
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %25 = load i32, i32* @AXI_CLKGEN_V2_REG_DRP_CNTRL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @axi_clkgen_write(%struct.axi_clkgen* %24, i32 %25, i32 %26)
  %28 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %29 = call i32 @axi_clkgen_wait_non_busy(%struct.axi_clkgen* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %16
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %32, %14
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @axi_clkgen_wait_non_busy(%struct.axi_clkgen*) #1

declare dso_local i32 @axi_clkgen_write(%struct.axi_clkgen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
