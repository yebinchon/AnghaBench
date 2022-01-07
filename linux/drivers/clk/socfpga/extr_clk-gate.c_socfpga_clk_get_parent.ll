; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate.c_socfpga_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate.c_socfpga_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@SOCFPGA_L4_MP_CLK = common dso_local global i32 0, align 4
@clk_mgr_base_addr = common dso_local global i64 0, align 8
@CLKMGR_L4SRC = common dso_local global i64 0, align 8
@SOCFPGA_L4_SP_CLK = common dso_local global i32 0, align 4
@CLKMGR_PERPLL_SRC = common dso_local global i64 0, align 8
@SOCFPGA_MMC_CLK = common dso_local global i32 0, align 4
@SOCFPGA_NAND_CLK = common dso_local global i32 0, align 4
@SOCFPGA_NAND_X_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @socfpga_clk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_clk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call i8* @clk_hw_get_name(%struct.clk_hw* %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* @SOCFPGA_L4_MP_CLK, align 4
  %11 = call i64 @streq(i8* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i64, i64* @clk_mgr_base_addr, align 8
  %15 = load i64, i64* @CLKMGR_L4SRC, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 1
  store i32 %19, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %66

20:                                               ; preds = %1
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @SOCFPGA_L4_SP_CLK, align 4
  %23 = call i64 @streq(i8* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i64, i64* @clk_mgr_base_addr, align 8
  %27 = load i64, i64* @CLKMGR_L4SRC, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %66

36:                                               ; preds = %20
  %37 = load i64, i64* @clk_mgr_base_addr, align 8
  %38 = load i64, i64* @CLKMGR_PERPLL_SRC, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @SOCFPGA_MMC_CLK, align 4
  %43 = call i64 @streq(i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 3
  store i32 %47, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %66

48:                                               ; preds = %36
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @SOCFPGA_NAND_CLK, align 4
  %51 = call i64 @streq(i8* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @SOCFPGA_NAND_X_CLK, align 4
  %56 = call i64 @streq(i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 2
  %61 = and i32 %60, 3
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  %64 = ashr i32 %63, 4
  %65 = and i32 %64, 3
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %58, %45, %25, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @streq(i8*, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
