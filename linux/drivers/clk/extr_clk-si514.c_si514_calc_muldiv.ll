; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_calc_muldiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_calc_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si514_muldiv = type { i64, i32, i64, i64 }

@SI514_MIN_FREQ = common dso_local global i64 0, align 8
@SI514_MAX_FREQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FVCO_MIN = common dso_local global i64 0, align 8
@HS_DIV_MAX = common dso_local global i64 0, align 8
@FXO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si514_muldiv*, i64)* @si514_calc_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si514_calc_muldiv(%struct.clk_si514_muldiv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_si514_muldiv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_si514_muldiv* %0, %struct.clk_si514_muldiv** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @SI514_MIN_FREQ, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @SI514_MAX_FREQ, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %92

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @FVCO_MIN, align 8
  %24 = load i64, i64* @HS_DIV_MAX, align 8
  %25 = udiv i64 %23, %24
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %4, align 8
  %29 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %57

30:                                               ; preds = %20
  store i64 1, i64* %9, align 8
  %31 = load i64, i64* @HS_DIV_MAX, align 8
  %32 = mul i64 2, %31
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %45, %30
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @HS_DIV_MAX, align 8
  %36 = mul i64 %35, 32
  %37 = icmp ule i64 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = mul i64 %39, %40
  %42 = load i64, i64* @FVCO_MIN, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %50

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = shl i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %33

50:                                               ; preds = %44, %33
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %4, align 8
  %53 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = shl i64 %54, %55
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %50, %27
  %58 = load i64, i64* @FVCO_MIN, align 8
  %59 = lshr i64 %58, 1
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @DIV_ROUND_UP(i64 %59, i64 %60)
  %62 = shl i32 %61, 1
  %63 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %4, align 8
  %64 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %4, align 8
  %67 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 %65, %69
  %71 = trunc i64 %70 to i32
  %72 = shl i32 %71, 29
  %73 = load i32, i32* @FXO, align 4
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @FXO, align 4
  %78 = call i32 @do_div(i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 @BIT(i32 29)
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = and i64 %80, %83
  %85 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %4, align 8
  %86 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = ashr i32 %87, 29
  %89 = sext i32 %88 to i64
  %90 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %4, align 8
  %91 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %57, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
