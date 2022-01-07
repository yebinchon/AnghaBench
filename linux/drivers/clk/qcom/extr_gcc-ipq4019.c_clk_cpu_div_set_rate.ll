; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_cpu_div_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_cpu_div_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fepll = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.freq_tbl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_cpu_div_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_cpu_div_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_fepll*, align 8
  %9 = alloca %struct.freq_tbl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.clk_fepll* @to_clk_fepll(%struct.clk_hw* %12)
  store %struct.clk_fepll* %13, %struct.clk_fepll** %8, align 8
  %14 = load %struct.clk_fepll*, %struct.clk_fepll** %8, align 8
  %15 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.freq_tbl* @qcom_find_freq(i32 %16, i64 %17)
  store %struct.freq_tbl* %18, %struct.freq_tbl** %9, align 8
  %19 = load %struct.freq_tbl*, %struct.freq_tbl** %9, align 8
  %20 = icmp ne %struct.freq_tbl* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  %25 = load %struct.clk_fepll*, %struct.clk_fepll** %8, align 8
  %26 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.clk_fepll*, %struct.clk_fepll** %8, align 8
  %32 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %30, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.clk_fepll*, %struct.clk_fepll** %8, align 8
  %37 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.clk_fepll*, %struct.clk_fepll** %8, align 8
  %42 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.freq_tbl*, %struct.freq_tbl** %9, align 8
  %47 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.clk_fepll*, %struct.clk_fepll** %8, align 8
  %50 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %48, %52
  %54 = call i32 @regmap_update_bits(i32 %40, i32 %44, i32 %45, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = call i32 @udelay(i32 1)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %24, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.clk_fepll* @to_clk_fepll(%struct.clk_hw*) #1

declare dso_local %struct.freq_tbl* @qcom_find_freq(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
