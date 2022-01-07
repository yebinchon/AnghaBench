; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate.c_socfpga_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate.c_socfpga_clk_set_parent.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @socfpga_clk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_clk_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call i8* @clk_hw_get_name(%struct.clk_hw* %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* @SOCFPGA_L4_MP_CLK, align 4
  %11 = call i64 @streq(i8* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i64, i64* @clk_mgr_base_addr, align 8
  %15 = load i64, i64* @CLKMGR_L4SRC, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, -2
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* @clk_mgr_base_addr, align 8
  %25 = load i64, i64* @CLKMGR_L4SRC, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %23, i64 %26)
  br label %96

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @SOCFPGA_L4_SP_CLK, align 4
  %31 = call i64 @streq(i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i64, i64* @clk_mgr_base_addr, align 8
  %35 = load i64, i64* @CLKMGR_L4SRC, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, -3
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 1
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* @clk_mgr_base_addr, align 8
  %46 = load i64, i64* @CLKMGR_L4SRC, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %44, i64 %47)
  br label %95

49:                                               ; preds = %28
  %50 = load i64, i64* @clk_mgr_base_addr, align 8
  %51 = load i64, i64* @CLKMGR_PERPLL_SRC, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @SOCFPGA_MMC_CLK, align 4
  %56 = call i64 @streq(i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, -4
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %89

64:                                               ; preds = %49
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @SOCFPGA_NAND_CLK, align 4
  %67 = call i64 @streq(i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @SOCFPGA_NAND_X_CLK, align 4
  %72 = call i64 @streq(i8* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, -13
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %4, align 4
  %78 = shl i32 %77, 2
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, -49
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = shl i32 %84, 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %81, %74
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i32, i32* %5, align 4
  %91 = load i64, i64* @clk_mgr_base_addr, align 8
  %92 = load i64, i64* @CLKMGR_PERPLL_SRC, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %90, i64 %93)
  br label %95

95:                                               ; preds = %89, %33
  br label %96

96:                                               ; preds = %95, %13
  ret i32 0
}

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @streq(i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
