; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_spll_calc_mult_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_spll_calc_mult_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_sys_pll = type { i64 }

@PLL_MULT_MAX = common dso_local global i32 0, align 4
@PLL_ODIV_MIN = common dso_local global i32 0, align 4
@PLL_ODIV_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"spll: no match found\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"rate %lu, par_rate %lu/mult %u, div %u, best_rate %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pic32_sys_pll*, i64, i64, i32*, i32*)* @spll_calc_mult_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spll_calc_mult_div(%struct.pic32_sys_pll* %0, i64 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.pic32_sys_pll*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.pic32_sys_pll* %0, %struct.pic32_sys_pll** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %17, align 8
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %23 = load %struct.pic32_sys_pll*, %struct.pic32_sys_pll** %7, align 8
  %24 = getelementptr inbounds %struct.pic32_sys_pll, %struct.pic32_sys_pll* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = udiv i64 %26, %25
  store i64 %27, i64* %9, align 8
  store i32 1, i32* %12, align 4
  br label %28

28:                                               ; preds = %71, %5
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @PLL_MULT_MAX, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load i32, i32* @PLL_ODIV_MIN, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %67, %32
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @PLL_ODIV_MAX, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %21, align 4
  %43 = mul nsw i32 %42, %41
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %13, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @do_div(i32 %44, i32 %46)
  %48 = load i32, i32* %21, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %16, align 8
  %52 = sub i64 %50, %51
  %53 = call i32 @abs(i64 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %38
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %19, align 4
  store i32 %62, i32* %18, align 4
  %63 = load i64, i64* %16, align 8
  store i64 %63, i64* %17, align 8
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %15, align 4
  store i32 1, i32* %20, align 4
  br label %66

66:                                               ; preds = %61, %57, %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %34

70:                                               ; preds = %34
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %28

74:                                               ; preds = %28
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %100

79:                                               ; preds = %74
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i64, i64* %17, align 8
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %80, i64 %81, i32 %82, i32 %83, i64 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %79
  %93 = load i32*, i32** %11, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %15, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i64, i64* %17, align 8
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %98, %77
  %101 = load i64, i64* %6, align 8
  ret i64 %101
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
