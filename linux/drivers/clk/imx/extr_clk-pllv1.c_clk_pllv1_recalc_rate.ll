; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv1.c_clk_pllv1_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv1.c_clk_pllv1_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pllv1 = type { i32 }

@MFN_MASK = common dso_local global i32 0, align 4
@MFN_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pllv1_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pllv1_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_pllv1*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %15 = call %struct.clk_pllv1* @to_clk_pllv1(%struct.clk_hw* %14)
  store %struct.clk_pllv1* %15, %struct.clk_pllv1** %5, align 8
  %16 = load %struct.clk_pllv1*, %struct.clk_pllv1** %5, align 8
  %17 = getelementptr inbounds %struct.clk_pllv1, %struct.clk_pllv1* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = ashr i32 %20, 10
  %22 = and i32 %21, 15
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %12, align 4
  %24 = and i32 %23, 1023
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %12, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 1023
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %12, align 4
  %29 = ashr i32 %28, 26
  %30 = and i32 %29, 15
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ule i32 %31, 5
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 5, %33 ], [ %35, %34 ]
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.clk_pllv1*, %struct.clk_pllv1** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @mfn_is_negative(%struct.clk_pllv1* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load %struct.clk_pllv1*, %struct.clk_pllv1** %5, align 8
  %45 = call i64 @is_imx27_pllv1(%struct.clk_pllv1* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MFN_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %7, align 4
  br label %56

51:                                               ; preds = %43
  %52 = load i32, i32* @MFN_BITS, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = sub i32 %53, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %47
  br label %57

57:                                               ; preds = %56, %36
  %58 = load i64, i64* %4, align 8
  %59 = mul i64 %58, 2
  store i64 %59, i64* %13, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %13, align 8
  %64 = udiv i64 %63, %62
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %65, %67
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 1
  %72 = call i32 @do_div(i64 %69, i32 %71)
  %73 = load %struct.clk_pllv1*, %struct.clk_pllv1** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @mfn_is_negative(%struct.clk_pllv1* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %57
  %78 = load i64, i64* %13, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = mul i64 %78, %80
  %82 = load i64, i64* %6, align 8
  %83 = sub i64 %81, %82
  store i64 %83, i64* %6, align 8
  br label %91

84:                                               ; preds = %57
  %85 = load i64, i64* %13, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = mul i64 %85, %87
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %88, %89
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %84, %77
  %92 = load i64, i64* %6, align 8
  ret i64 %92
}

declare dso_local %struct.clk_pllv1* @to_clk_pllv1(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @mfn_is_negative(%struct.clk_pllv1*, i32) #1

declare dso_local i64 @is_imx27_pllv1(%struct.clk_pllv1*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
