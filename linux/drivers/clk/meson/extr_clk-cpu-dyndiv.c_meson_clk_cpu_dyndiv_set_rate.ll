; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-cpu-dyndiv.c_meson_clk_cpu_dyndiv_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-cpu-dyndiv.c_meson_clk_cpu_dyndiv_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_cpu_dyndiv_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @meson_clk_cpu_dyndiv_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_clk_cpu_dyndiv_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_regmap*, align 8
  %9 = alloca %struct.meson_clk_cpu_dyndiv_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %12)
  store %struct.clk_regmap* %13, %struct.clk_regmap** %8, align 8
  %14 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %15 = call %struct.meson_clk_cpu_dyndiv_data* @meson_clk_cpu_dyndiv_data(%struct.clk_regmap* %14)
  store %struct.meson_clk_cpu_dyndiv_data* %15, %struct.meson_clk_cpu_dyndiv_data** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %9, align 8
  %19 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @divider_get_val(i64 %16, i64 %17, i32* null, i32 %21, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %68

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %9, align 8
  %30 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %28, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %35 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %9, align 8
  %38 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %37, i32 0, i32 0
  %39 = call i32 @meson_parm_write(i32 %36, %struct.TYPE_4__* %38, i32 1)
  %40 = load %struct.clk_regmap*, %struct.clk_regmap** %8, align 8
  %41 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %9, align 8
  %44 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %9, align 8
  %48 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %9, align 8
  %52 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SETPMASK(i32 %50, i32 %54)
  %56 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %9, align 8
  %57 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %9, align 8
  %61 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SETPMASK(i32 %59, i32 %63)
  %65 = or i32 %55, %64
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @regmap_update_bits(i32 %42, i32 %46, i32 %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %27, %25
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_cpu_dyndiv_data* @meson_clk_cpu_dyndiv_data(%struct.clk_regmap*) #1

declare dso_local i32 @divider_get_val(i64, i64, i32*, i32, i32) #1

declare dso_local i32 @meson_parm_write(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SETPMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
