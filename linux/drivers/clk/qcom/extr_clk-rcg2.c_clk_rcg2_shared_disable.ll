; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_shared_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_shared_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rcg2 = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CFG_REG = common dso_local global i64 0, align 8
@CFG_SRC_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_rcg2_shared_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_rcg2_shared_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_rcg2*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %5)
  store %struct.clk_rcg2* %6, %struct.clk_rcg2** %3, align 8
  %7 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %8 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %12 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CFG_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @regmap_read(i32 %10, i64 %15, i32* %4)
  %17 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %18 = call i32 @clk_rcg2_set_force_enable(%struct.clk_hw* %17)
  %19 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %20 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %24 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CFG_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %29 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CFG_SRC_SEL_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @regmap_write(i32 %22, i64 %27, i32 %32)
  %34 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %35 = call i32 @update_config(%struct.clk_rcg2* %34)
  %36 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %37 = call i32 @clk_rcg2_clear_force_enable(%struct.clk_hw* %36)
  %38 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %39 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %43 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CFG_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @regmap_write(i32 %41, i64 %46, i32 %47)
  ret void
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @clk_rcg2_set_force_enable(%struct.clk_hw*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @update_config(%struct.clk_rcg2*) #1

declare dso_local i32 @clk_rcg2_clear_force_enable(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
