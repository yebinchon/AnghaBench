; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv4.c_clk_pllv4_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv4.c_clk_pllv4_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@DEFAULT_MFD = common dso_local global i64 0, align 8
@pllv4_mult_table = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s: unable to round rate %lu, parent rate %lu\0A\00", align 1
@MAX_MFD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_pllv4_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pllv4_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* @DEFAULT_MFD, align 8
  store i64 %17, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %35, %3
  %19 = load i64, i64* %10, align 8
  %20 = load i64*, i64** @pllv4_mult_table, align 8
  %21 = call i64 @ARRAY_SIZE(i64* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i64, i64* %8, align 8
  %25 = load i64*, i64** @pllv4_mult_table, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %24, %28
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 1, i32* %13, align 4
  br label %38

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %18

38:                                               ; preds = %33, %18
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %43 = call i32 @clk_hw_get_name(%struct.clk_hw* %42)
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %44, i64 %45)
  store i64 0, i64* %4, align 8
  br label %80

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @MAX_MFD, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %14, align 8
  %59 = mul nsw i64 %58, %57
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @do_div(i64 %60, i64 %61)
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %4, align 8
  br label %80

69:                                               ; preds = %53
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %14, align 8
  %73 = mul nsw i64 %72, %71
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @do_div(i64 %74, i64 %75)
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %77, %78
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %69, %67, %41
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, i64) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
