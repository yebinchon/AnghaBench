; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-dualdiv.c_meson_clk_dualdiv_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-dualdiv.c_meson_clk_dualdiv_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_dualdiv_data = type { i32, i32, i32, i32, i32 }
%struct.meson_clk_dualdiv_param = type { i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @meson_clk_dualdiv_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_clk_dualdiv_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_regmap*, align 8
  %9 = alloca %struct.meson_clk_dualdiv_data*, align 8
  %10 = alloca %struct.meson_clk_dualdiv_param*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %11)
  store %struct.clk_regmap* %12, %struct.clk_regmap** %8, align 8
  %13 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %14 = call %struct.meson_clk_dualdiv_data* @meson_clk_dualdiv_data(%struct.clk_regmap* %13)
  store %struct.meson_clk_dualdiv_data* %14, %struct.meson_clk_dualdiv_data** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %9, align 8
  %18 = call %struct.meson_clk_dualdiv_param* @__dualdiv_get_setting(i64 %15, i64 %16, %struct.meson_clk_dualdiv_data* %17)
  store %struct.meson_clk_dualdiv_param* %18, %struct.meson_clk_dualdiv_param** %10, align 8
  %19 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %10, align 8
  %20 = icmp ne %struct.meson_clk_dualdiv_param* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %26 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %9, align 8
  %29 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %28, i32 0, i32 4
  %30 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %10, align 8
  %31 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @meson_parm_write(i32 %27, i32* %29, i64 %32)
  %34 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %35 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %9, align 8
  %38 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %37, i32 0, i32 3
  %39 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %10, align 8
  %40 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  %43 = call i32 @meson_parm_write(i32 %36, i32* %38, i64 %42)
  %44 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %45 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %9, align 8
  %48 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %47, i32 0, i32 2
  %49 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %10, align 8
  %50 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @meson_parm_write(i32 %46, i32* %48, i64 %52)
  %54 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %55 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %9, align 8
  %58 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %57, i32 0, i32 1
  %59 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %10, align 8
  %60 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 1
  %63 = call i32 @meson_parm_write(i32 %56, i32* %58, i64 %62)
  %64 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %65 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %9, align 8
  %68 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %67, i32 0, i32 0
  %69 = load %struct.meson_clk_dualdiv_param*, %struct.meson_clk_dualdiv_param** %10, align 8
  %70 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 1
  %73 = call i32 @meson_parm_write(i32 %66, i32* %68, i64 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %24, %21
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_dualdiv_data* @meson_clk_dualdiv_data(%struct.clk_regmap*) #1

declare dso_local %struct.meson_clk_dualdiv_param* @__dualdiv_get_setting(i64, i64, %struct.meson_clk_dualdiv_data*) #1

declare dso_local i32 @meson_parm_write(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
