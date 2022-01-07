; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_pic32_spll_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_pic32_spll_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.pic32_sys_pll_data = type { i32, i64, i64, i32 }
%struct.pic32_clk_common = type { i32, i64 }
%struct.pic32_sys_pll = type { i32, %struct.TYPE_2__, i64, i32, i64, %struct.pic32_clk_common* }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PLL_IDIV_SHIFT = common dso_local global i32 0, align 4
@PLL_IDIV_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sys_pll: clk_register() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @pic32_spll_clk_register(%struct.pic32_sys_pll_data* %0, %struct.pic32_clk_common* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.pic32_sys_pll_data*, align 8
  %5 = alloca %struct.pic32_clk_common*, align 8
  %6 = alloca %struct.pic32_sys_pll*, align 8
  %7 = alloca %struct.clk*, align 8
  store %struct.pic32_sys_pll_data* %0, %struct.pic32_sys_pll_data** %4, align 8
  store %struct.pic32_clk_common* %1, %struct.pic32_clk_common** %5, align 8
  %8 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %9 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pic32_sys_pll* @devm_kzalloc(i32 %10, i32 48, i32 %11)
  store %struct.pic32_sys_pll* %12, %struct.pic32_sys_pll** %6, align 8
  %13 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %14 = icmp ne %struct.pic32_sys_pll* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.clk* @ERR_PTR(i32 %17)
  store %struct.clk* %18, %struct.clk** %3, align 8
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %21 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %22 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %21, i32 0, i32 5
  store %struct.pic32_clk_common* %20, %struct.pic32_clk_common** %22, align 8
  %23 = load %struct.pic32_sys_pll_data*, %struct.pic32_sys_pll_data** %4, align 8
  %24 = getelementptr inbounds %struct.pic32_sys_pll_data, %struct.pic32_sys_pll_data* %23, i32 0, i32 3
  %25 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %26 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = load %struct.pic32_sys_pll_data*, %struct.pic32_sys_pll_data** %4, align 8
  %29 = getelementptr inbounds %struct.pic32_sys_pll_data, %struct.pic32_sys_pll_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %32 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %36 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.pic32_sys_pll_data*, %struct.pic32_sys_pll_data** %4, align 8
  %38 = getelementptr inbounds %struct.pic32_sys_pll_data, %struct.pic32_sys_pll_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %41 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %45 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.pic32_sys_pll_data*, %struct.pic32_sys_pll_data** %4, align 8
  %47 = getelementptr inbounds %struct.pic32_sys_pll_data, %struct.pic32_sys_pll_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %50 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %52 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @readl(i64 %53)
  %55 = load i32, i32* @PLL_IDIV_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* @PLL_IDIV_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %60 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %62 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %66 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %6, align 8
  %69 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %68, i32 0, i32 1
  %70 = call %struct.clk* @devm_clk_register(i32 %67, %struct.TYPE_2__* %69)
  store %struct.clk* %70, %struct.clk** %7, align 8
  %71 = load %struct.clk*, %struct.clk** %7, align 8
  %72 = call i64 @IS_ERR(%struct.clk* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %19
  %75 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %76 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %19
  %80 = load %struct.clk*, %struct.clk** %7, align 8
  store %struct.clk* %80, %struct.clk** %3, align 8
  br label %81

81:                                               ; preds = %79, %15
  %82 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %82
}

declare dso_local %struct.pic32_sys_pll* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.clk* @devm_clk_register(i32, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
