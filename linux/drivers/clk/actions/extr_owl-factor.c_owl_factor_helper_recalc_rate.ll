; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c_owl_factor_helper_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c_owl_factor_helper_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_clk_common = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.owl_factor_hw = type { i64, i32, i32, %struct.clk_factor_table* }
%struct.clk_factor_table = type { i32 }

@CLK_DIVIDER_ALLOW_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @owl_factor_helper_recalc_rate(%struct.owl_clk_common* %0, %struct.owl_factor_hw* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.owl_clk_common*, align 8
  %6 = alloca %struct.owl_factor_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_factor_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.owl_clk_common* %0, %struct.owl_clk_common** %5, align 8
  store %struct.owl_factor_hw* %1, %struct.owl_factor_hw** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %15 = getelementptr inbounds %struct.owl_factor_hw, %struct.owl_factor_hw* %14, i32 0, i32 3
  %16 = load %struct.clk_factor_table*, %struct.clk_factor_table** %15, align 8
  store %struct.clk_factor_table* %16, %struct.clk_factor_table** %8, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.owl_clk_common*, %struct.owl_clk_common** %5, align 8
  %18 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %21 = getelementptr inbounds %struct.owl_factor_hw, %struct.owl_factor_hw* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_read(i32 %19, i32 %22, i64* %10)
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %26 = getelementptr inbounds %struct.owl_factor_hw, %struct.owl_factor_hw* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = lshr i64 %24, %27
  store i64 %28, i64* %11, align 8
  %29 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %30 = call i64 @div_mask(%struct.owl_factor_hw* %29)
  %31 = load i64, i64* %11, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %11, align 8
  %33 = load %struct.clk_factor_table*, %struct.clk_factor_table** %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @_get_table_div_mul(%struct.clk_factor_table* %33, i64 %34, i64* %12, i64* %13)
  %36 = load i64, i64* %13, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %3
  %39 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %40 = getelementptr inbounds %struct.owl_factor_hw, %struct.owl_factor_hw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CLK_DIVIDER_ALLOW_ZERO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.owl_clk_common*, %struct.owl_clk_common** %5, align 8
  %48 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__clk_get_name(i32 %50)
  %52 = call i32 @WARN(i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %4, align 8
  br label %62

54:                                               ; preds = %3
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %12, align 8
  %57 = mul i64 %55, %56
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @do_div(i64 %58, i64 %59)
  %61 = load i64, i64* %9, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %54, %38
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local i32 @regmap_read(i32, i32, i64*) #1

declare dso_local i64 @div_mask(%struct.owl_factor_hw*) #1

declare dso_local i32 @_get_table_div_mul(%struct.clk_factor_table*, i64, i64*, i64*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @__clk_get_name(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
