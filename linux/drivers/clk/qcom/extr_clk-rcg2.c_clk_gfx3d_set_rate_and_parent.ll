; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_gfx3d_set_rate_and_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_gfx3d_set_rate_and_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rcg2 = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CFG_SRC_SEL_SHIFT = common dso_local global i32 0, align 4
@CFG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64, i64)* @clk_gfx3d_set_rate_and_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_gfx3d_set_rate_and_parent(%struct.clk_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.clk_rcg2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %14 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %13)
  store %struct.clk_rcg2* %14, %struct.clk_rcg2** %10, align 8
  %15 = load %struct.clk_rcg2*, %struct.clk_rcg2** %10, align 8
  %16 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CFG_SRC_SEL_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.clk_rcg2*, %struct.clk_rcg2** %10, align 8
  %25 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.clk_rcg2*, %struct.clk_rcg2** %10, align 8
  %29 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CFG_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @regmap_write(i32 %27, i64 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %42

39:                                               ; preds = %4
  %40 = load %struct.clk_rcg2*, %struct.clk_rcg2** %10, align 8
  %41 = call i32 @update_config(%struct.clk_rcg2* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %37
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @update_config(%struct.clk_rcg2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
