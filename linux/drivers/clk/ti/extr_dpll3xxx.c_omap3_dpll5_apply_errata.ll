; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_dpll5_apply_errata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_dpll5_apply_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap3_dpll5_settings = type { i32, i32, i32 }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32 }
%struct.omap3_dpll5_settings.0 = type opaque

@omap3_dpll5_apply_errata.precomputed = internal constant [5 x %struct.omap3_dpll5_settings] [%struct.omap3_dpll5_settings { i32 12000000, i32 80, i32 1 }, %struct.omap3_dpll5_settings { i32 13000000, i32 443, i32 6 }, %struct.omap3_dpll5_settings { i32 19200000, i32 50, i32 1 }, %struct.omap3_dpll5_settings { i32 26000000, i32 443, i32 12 }, %struct.omap3_dpll5_settings { i32 38400000, i32 25, i32 1 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @omap3_dpll5_apply_errata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_dpll5_apply_errata(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.omap3_dpll5_settings*, align 8
  %7 = alloca %struct.clk_hw_omap*, align 8
  %8 = alloca %struct.dpll_data*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %10)
  store %struct.clk_hw_omap* %11, %struct.clk_hw_omap** %7, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %27, %2
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @ARRAY_SIZE(%struct.omap3_dpll5_settings.0* bitcast ([5 x %struct.omap3_dpll5_settings]* @omap3_dpll5_apply_errata.precomputed to %struct.omap3_dpll5_settings.0*))
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [5 x %struct.omap3_dpll5_settings], [5 x %struct.omap3_dpll5_settings]* @omap3_dpll5_apply_errata.precomputed, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.omap3_dpll5_settings, %struct.omap3_dpll5_settings* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %30

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %12

30:                                               ; preds = %25, %12
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ARRAY_SIZE(%struct.omap3_dpll5_settings.0* bitcast ([5 x %struct.omap3_dpll5_settings]* @omap3_dpll5_apply_errata.precomputed to %struct.omap3_dpll5_settings.0*))
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %66

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [5 x %struct.omap3_dpll5_settings], [5 x %struct.omap3_dpll5_settings]* @omap3_dpll5_apply_errata.precomputed, i64 0, i64 %37
  store %struct.omap3_dpll5_settings* %38, %struct.omap3_dpll5_settings** %6, align 8
  %39 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %7, align 8
  %40 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %39, i32 0, i32 0
  %41 = load %struct.dpll_data*, %struct.dpll_data** %40, align 8
  store %struct.dpll_data* %41, %struct.dpll_data** %8, align 8
  %42 = load %struct.omap3_dpll5_settings*, %struct.omap3_dpll5_settings** %6, align 8
  %43 = getelementptr inbounds %struct.omap3_dpll5_settings, %struct.omap3_dpll5_settings* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %46 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.omap3_dpll5_settings*, %struct.omap3_dpll5_settings** %6, align 8
  %48 = getelementptr inbounds %struct.omap3_dpll5_settings, %struct.omap3_dpll5_settings* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %51 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %5, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.omap3_dpll5_settings*, %struct.omap3_dpll5_settings** %6, align 8
  %55 = getelementptr inbounds %struct.omap3_dpll5_settings, %struct.omap3_dpll5_settings* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul i32 %53, %56
  %58 = load %struct.omap3_dpll5_settings*, %struct.omap3_dpll5_settings** %6, align 8
  %59 = getelementptr inbounds %struct.omap3_dpll5_settings, %struct.omap3_dpll5_settings* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @div_u64(i32 %57, i32 %60)
  %62 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %63 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %7, align 8
  %65 = call i32 @omap3_noncore_dpll_program(%struct.clk_hw_omap* %64, i32 0)
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %35, %34
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.omap3_dpll5_settings.0*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @omap3_noncore_dpll_program(%struct.clk_hw_omap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
