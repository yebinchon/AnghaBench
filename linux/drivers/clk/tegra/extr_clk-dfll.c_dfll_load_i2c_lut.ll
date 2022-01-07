; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_load_i2c_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_load_i2c_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32, i32, i64, i32*, i32 }

@MAX_DFLL_VOLTAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dfll*)* @dfll_load_i2c_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfll_load_i2c_lut(%struct.tegra_dfll* %0) #0 {
  %2 = alloca %struct.tegra_dfll*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %54, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_DFLL_VOLTAGES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %57

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %13 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %23 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %28 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %26
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %38 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regulator_list_hardware_vsel(i32 %36, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %47 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = call i32 @__raw_writel(i32 %45, i64 %52)
  br label %54

54:                                               ; preds = %33
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %6

57:                                               ; preds = %6
  %58 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %59 = call i32 @dfll_i2c_wmb(%struct.tegra_dfll* %58)
  ret void
}

declare dso_local i32 @regulator_list_hardware_vsel(i32, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @dfll_i2c_wmb(%struct.tegra_dfll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
