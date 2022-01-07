; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_wait_non_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_wait_non_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_clkgen = type { i32 }

@AXI_CLKGEN_V2_REG_DRP_STATUS = common dso_local global i32 0, align 4
@AXI_CLKGEN_V2_DRP_STATUS_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axi_clkgen*)* @axi_clkgen_wait_non_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_clkgen_wait_non_busy(%struct.axi_clkgen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axi_clkgen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.axi_clkgen* %0, %struct.axi_clkgen** %3, align 8
  store i32 10000, i32* %4, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.axi_clkgen*, %struct.axi_clkgen** %3, align 8
  %8 = load i32, i32* @AXI_CLKGEN_V2_REG_DRP_STATUS, align 4
  %9 = call i32 @axi_clkgen_read(%struct.axi_clkgen* %7, i32 %8, i32* %5)
  br label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AXI_CLKGEN_V2_DRP_STATUS_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ false, %10 ], [ %18, %15 ]
  br i1 %20, label %6, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @AXI_CLKGEN_V2_DRP_STATUS_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 65535
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @axi_clkgen_read(%struct.axi_clkgen*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
