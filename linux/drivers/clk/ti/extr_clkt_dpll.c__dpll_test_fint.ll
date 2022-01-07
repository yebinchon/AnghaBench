; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dpll.c__dpll_test_fint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dpll.c__dpll_test_fint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw_omap = type { i32, %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@DPLL_J_TYPE = common dso_local global i32 0, align 4
@OMAP3PLUS_DPLL_FINT_JTYPE_MIN = common dso_local global i64 0, align 8
@OMAP3PLUS_DPLL_FINT_JTYPE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"No fint limits available!\0A\00", align 1
@DPLL_FINT_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"rejecting n=%d due to Fint failure, lowering max_divider\0A\00", align 1
@DPLL_FINT_UNDERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"rejecting n=%d due to Fint failure, boosting min_divider\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"rejecting n=%d due to Fint failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw_omap*, i32)* @_dpll_test_fint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpll_test_fint(%struct.clk_hw_omap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw_omap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpll_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %12 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %11, i32 0, i32 1
  %13 = load %struct.dpll_data*, %struct.dpll_data** %12, align 8
  store %struct.dpll_data* %13, %struct.dpll_data** %6, align 8
  %14 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %15 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %14, i32 0, i32 0
  %16 = call i32 @clk_hw_get_parent(i32* %15)
  %17 = call i32 @clk_hw_get_rate(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = udiv i32 %17, %18
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %22 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DPLL_J_TYPE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i64, i64* @OMAP3PLUS_DPLL_FINT_JTYPE_MIN, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* @OMAP3PLUS_DPLL_FINT_JTYPE_MAX, align 8
  store i64 %29, i64* %9, align 8
  br label %37

30:                                               ; preds = %2
  %31 = call %struct.TYPE_2__* (...) @ti_clk_get_features()
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = call %struct.TYPE_2__* (...) @ti_clk_get_features()
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %37
  %44 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @DPLL_FINT_INVALID, align 4
  store i32 %45, i32* %3, align 4
  br label %92

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  %48 = call %struct.TYPE_2__* (...) @ti_clk_get_features()
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %57 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @DPLL_FINT_UNDERFLOW, align 4
  store i32 %58, i32* %10, align 4
  br label %90

59:                                               ; preds = %46
  %60 = load i64, i64* %7, align 8
  %61 = call %struct.TYPE_2__* (...) @ti_clk_get_features()
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %70 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @DPLL_FINT_INVALID, align 4
  store i32 %71, i32* %10, align 4
  br label %89

72:                                               ; preds = %59
  %73 = load i64, i64* %7, align 8
  %74 = call %struct.TYPE_2__* (...) @ti_clk_get_features()
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load i64, i64* %7, align 8
  %80 = call %struct.TYPE_2__* (...) @ti_clk_get_features()
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @DPLL_FINT_INVALID, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %84, %78, %72
  br label %89

89:                                               ; preds = %88, %65
  br label %90

90:                                               ; preds = %89, %52
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %43
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @clk_hw_get_rate(i32) #1

declare dso_local i32 @clk_hw_get_parent(i32*) #1

declare dso_local %struct.TYPE_2__* @ti_clk_get_features(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
