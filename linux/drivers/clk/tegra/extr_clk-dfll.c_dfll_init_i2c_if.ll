; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_init_i2c_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_init_i2c_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32, i32, i32, i64, i32 }

@DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_10BIT = common dso_local global i32 0, align 4
@DFLL_I2C_CFG_SLAVE_ADDR_10 = common dso_local global i32 0, align 4
@DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_7BIT = common dso_local global i32 0, align 4
@DFLL_I2C_CFG_SIZE_MASK = common dso_local global i32 0, align 4
@DFLL_I2C_CFG_ARB_ENABLE = common dso_local global i32 0, align 4
@DFLL_I2C_CFG = common dso_local global i32 0, align 4
@DFLL_I2C_VDD_REG_ADDR = common dso_local global i32 0, align 4
@DFLL_I2C_CLK_DIVISOR_MASK = common dso_local global i32 0, align 4
@DFLL_I2C_CLK_DIVISOR_FS_SHIFT = common dso_local global i32 0, align 4
@DFLL_I2C_CLK_DIVISOR_HS_SHIFT = common dso_local global i32 0, align 4
@DFLL_I2C_CLK_DIVISOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dfll*)* @dfll_init_i2c_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfll_init_i2c_if(%struct.tegra_dfll* %0) #0 {
  %2 = alloca %struct.tegra_dfll*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %2, align 8
  %4 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 127
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_10BIT, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @DFLL_I2C_CFG_SLAVE_ADDR_10, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %19 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_7BIT, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %8
  %24 = load i32, i32* @DFLL_I2C_CFG_SIZE_MASK, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @DFLL_I2C_CFG_ARB_ENABLE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @DFLL_I2C_CFG, align 4
  %33 = call i32 @dfll_i2c_writel(%struct.tegra_dfll* %30, i32 %31, i32 %32)
  %34 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %35 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %36 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DFLL_I2C_VDD_REG_ADDR, align 4
  %39 = call i32 @dfll_i2c_writel(%struct.tegra_dfll* %34, i32 %37, i32 %38)
  %40 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %41 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %44 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 8
  %47 = call i32 @DIV_ROUND_UP(i32 %42, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %23
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @DFLL_I2C_CLK_DIVISOR_MASK, align 4
  %53 = icmp sgt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %23
  %55 = phi i1 [ true, %23 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* @DFLL_I2C_CLK_DIVISOR_FS_SHIFT, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @DFLL_I2C_CLK_DIVISOR_HS_SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %68 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DFLL_I2C_CLK_DIVISOR, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @__raw_writel(i32 %66, i64 %71)
  %73 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %74 = call i32 @dfll_i2c_wmb(%struct.tegra_dfll* %73)
  ret void
}

declare dso_local i32 @dfll_i2c_writel(%struct.tegra_dfll*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @dfll_i2c_wmb(%struct.tegra_dfll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
