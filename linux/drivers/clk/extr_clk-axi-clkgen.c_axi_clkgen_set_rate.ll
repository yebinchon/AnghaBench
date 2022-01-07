; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.axi_clkgen = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MMCM_REG_CLKOUT0_1 = common dso_local global i32 0, align 4
@MMCM_REG_CLKOUT0_2 = common dso_local global i32 0, align 4
@MMCM_REG_CLK_DIV = common dso_local global i32 0, align 4
@MMCM_REG_CLK_FB1 = common dso_local global i32 0, align 4
@MMCM_REG_CLK_FB2 = common dso_local global i32 0, align 4
@MMCM_REG_LOCK1 = common dso_local global i32 0, align 4
@MMCM_REG_LOCK2 = common dso_local global i32 0, align 4
@MMCM_REG_LOCK3 = common dso_local global i32 0, align 4
@MMCM_REG_FILTER1 = common dso_local global i32 0, align 4
@MMCM_REG_FILTER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @axi_clkgen_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_clkgen_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.axi_clkgen*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call %struct.axi_clkgen* @clk_hw_to_axi_clkgen(%struct.clk_hw* %18)
  store %struct.axi_clkgen* %19, %struct.axi_clkgen** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %129

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @axi_clkgen_calc_params(i64 %29, i64 %30, i32* %9, i32* %10, i32* %11)
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %34, %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %129

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = sub i32 %44, 1
  %46 = call i32 @axi_clkgen_lookup_filter(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub i32 %47, 1
  %49 = call i32 @axi_clkgen_lookup_lock(i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @axi_clkgen_calc_clk_params(i32 %50, i32* %15, i32* %13, i32* %14, i32* %12)
  %52 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %53 = load i32, i32* @MMCM_REG_CLKOUT0_1, align 4
  %54 = load i32, i32* %13, align 4
  %55 = shl i32 %54, 6
  %56 = load i32, i32* %15, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %52, i32 %53, i32 %57, i32 61439)
  %59 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %60 = load i32, i32* @MMCM_REG_CLKOUT0_2, align 4
  %61 = load i32, i32* %14, align 4
  %62 = shl i32 %61, 7
  %63 = load i32, i32* %12, align 4
  %64 = shl i32 %63, 6
  %65 = or i32 %62, %64
  %66 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %59, i32 %60, i32 %65, i32 1023)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @axi_clkgen_calc_clk_params(i32 %67, i32* %15, i32* %13, i32* %14, i32* %12)
  %69 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %70 = load i32, i32* @MMCM_REG_CLK_DIV, align 4
  %71 = load i32, i32* %14, align 4
  %72 = shl i32 %71, 13
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 12
  %75 = or i32 %72, %74
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %76, 6
  %78 = or i32 %75, %77
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %69, i32 %70, i32 %80, i32 16383)
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @axi_clkgen_calc_clk_params(i32 %82, i32* %15, i32* %13, i32* %14, i32* %12)
  %84 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %85 = load i32, i32* @MMCM_REG_CLK_FB1, align 4
  %86 = load i32, i32* %13, align 4
  %87 = shl i32 %86, 6
  %88 = load i32, i32* %15, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %84, i32 %85, i32 %89, i32 61439)
  %91 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %92 = load i32, i32* @MMCM_REG_CLK_FB2, align 4
  %93 = load i32, i32* %14, align 4
  %94 = shl i32 %93, 7
  %95 = load i32, i32* %12, align 4
  %96 = shl i32 %95, 6
  %97 = or i32 %94, %96
  %98 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %91, i32 %92, i32 %97, i32 1023)
  %99 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %100 = load i32, i32* @MMCM_REG_LOCK1, align 4
  %101 = load i32, i32* %17, align 4
  %102 = and i32 %101, 1023
  %103 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %99, i32 %100, i32 %102, i32 1023)
  %104 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %105 = load i32, i32* @MMCM_REG_LOCK2, align 4
  %106 = load i32, i32* %17, align 4
  %107 = ashr i32 %106, 16
  %108 = and i32 %107, 31
  %109 = shl i32 %108, 10
  %110 = or i32 %109, 1
  %111 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %104, i32 %105, i32 %110, i32 32767)
  %112 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %113 = load i32, i32* @MMCM_REG_LOCK3, align 4
  %114 = load i32, i32* %17, align 4
  %115 = ashr i32 %114, 24
  %116 = and i32 %115, 31
  %117 = shl i32 %116, 10
  %118 = or i32 %117, 1001
  %119 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %112, i32 %113, i32 %118, i32 32767)
  %120 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %121 = load i32, i32* @MMCM_REG_FILTER1, align 4
  %122 = load i32, i32* %16, align 4
  %123 = ashr i32 %122, 16
  %124 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %120, i32 %121, i32 %123, i32 39168)
  %125 = load %struct.axi_clkgen*, %struct.axi_clkgen** %8, align 8
  %126 = load i32, i32* @MMCM_REG_FILTER2, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen* %125, i32 %126, i32 %127, i32 39168)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %43, %40, %25
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.axi_clkgen* @clk_hw_to_axi_clkgen(%struct.clk_hw*) #1

declare dso_local i32 @axi_clkgen_calc_params(i64, i64, i32*, i32*, i32*) #1

declare dso_local i32 @axi_clkgen_lookup_filter(i32) #1

declare dso_local i32 @axi_clkgen_lookup_lock(i32) #1

declare dso_local i32 @axi_clkgen_calc_clk_params(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @axi_clkgen_mmcm_write(%struct.axi_clkgen*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
