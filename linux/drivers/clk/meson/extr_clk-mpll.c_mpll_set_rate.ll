; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-mpll.c_mpll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-mpll.c_mpll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_mpll_data = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @mpll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_regmap*, align 8
  %8 = alloca %struct.meson_clk_mpll_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %12)
  store %struct.clk_regmap* %13, %struct.clk_regmap** %7, align 8
  %14 = load %struct.clk_regmap*, %struct.clk_regmap** %7, align 8
  %15 = call %struct.meson_clk_mpll_data* @meson_clk_mpll_data(%struct.clk_regmap* %14)
  store %struct.meson_clk_mpll_data* %15, %struct.meson_clk_mpll_data** %8, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %8, align 8
  %19 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @params_from_rate(i64 %16, i64 %17, i32* %9, i32* %10, i32 %20)
  %22 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %8, align 8
  %23 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %8, align 8
  %28 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i64 %29, i64 %30)
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %8, align 8
  %34 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @__acquire(i64 %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.clk_regmap*, %struct.clk_regmap** %7, align 8
  %39 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %8, align 8
  %42 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %41, i32 0, i32 2
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @meson_parm_write(i32 %40, i32* %42, i32 %43)
  %45 = load %struct.clk_regmap*, %struct.clk_regmap** %7, align 8
  %46 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %8, align 8
  %49 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %48, i32 0, i32 1
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @meson_parm_write(i32 %47, i32* %49, i32 %50)
  %52 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %8, align 8
  %53 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %37
  %57 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %8, align 8
  %58 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @spin_unlock_irqrestore(i64 %59, i64 %60)
  br label %67

62:                                               ; preds = %37
  %63 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %8, align 8
  %64 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @__release(i64 %65)
  br label %67

67:                                               ; preds = %62, %56
  ret i32 0
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_mpll_data* @meson_clk_mpll_data(%struct.clk_regmap*) #1

declare dso_local i32 @params_from_rate(i64, i64, i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @__acquire(i64) #1

declare dso_local i32 @meson_parm_write(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @__release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
