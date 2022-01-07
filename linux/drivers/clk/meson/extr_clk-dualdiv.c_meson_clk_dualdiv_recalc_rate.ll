; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-dualdiv.c_meson_clk_dualdiv_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-dualdiv.c_meson_clk_dualdiv_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_dualdiv_data = type { i32, i32, i32, i32, i32 }
%struct.meson_clk_dualdiv_param = type { i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @meson_clk_dualdiv_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @meson_clk_dualdiv_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_regmap*, align 8
  %6 = alloca %struct.meson_clk_dualdiv_data*, align 8
  %7 = alloca %struct.meson_clk_dualdiv_param, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %8)
  store %struct.clk_regmap* %9, %struct.clk_regmap** %5, align 8
  %10 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %11 = call %struct.meson_clk_dualdiv_data* @meson_clk_dualdiv_data(%struct.clk_regmap* %10)
  store %struct.meson_clk_dualdiv_data* %11, %struct.meson_clk_dualdiv_data** %6, align 8
  %12 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %13 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %6, align 8
  %16 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %15, i32 0, i32 4
  %17 = call i8* @meson_parm_read(i32 %14, i32* %16)
  %18 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %7, i32 0, i32 4
  store i8* %17, i8** %18, align 8
  %19 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %20 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %6, align 8
  %23 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %22, i32 0, i32 3
  %24 = call i8* @meson_parm_read(i32 %21, i32* %23)
  %25 = getelementptr i8, i8* %24, i64 1
  %26 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %7, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %28 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %6, align 8
  %31 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %30, i32 0, i32 2
  %32 = call i8* @meson_parm_read(i32 %29, i32* %31)
  %33 = getelementptr i8, i8* %32, i64 1
  %34 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %7, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %36 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %6, align 8
  %39 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %38, i32 0, i32 1
  %40 = call i8* @meson_parm_read(i32 %37, i32* %39)
  %41 = getelementptr i8, i8* %40, i64 1
  %42 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %7, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %44 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.meson_clk_dualdiv_data*, %struct.meson_clk_dualdiv_data** %6, align 8
  %47 = getelementptr inbounds %struct.meson_clk_dualdiv_data, %struct.meson_clk_dualdiv_data* %46, i32 0, i32 0
  %48 = call i8* @meson_parm_read(i32 %45, i32* %47)
  %49 = getelementptr i8, i8* %48, i64 1
  %50 = getelementptr inbounds %struct.meson_clk_dualdiv_param, %struct.meson_clk_dualdiv_param* %7, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @__dualdiv_param_to_rate(i64 %51, %struct.meson_clk_dualdiv_param* %7)
  ret i64 %52
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_dualdiv_data* @meson_clk_dualdiv_data(%struct.clk_regmap*) #1

declare dso_local i8* @meson_parm_read(i32, i32*) #1

declare dso_local i64 @__dualdiv_param_to_rate(i64, %struct.meson_clk_dualdiv_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
