; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si570 = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"unable to round rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @si570_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @si570_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.clk_si570*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_si570* @to_clk_si570(%struct.clk_hw* %13)
  store %struct.clk_si570* %14, %struct.clk_si570** %12, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %69

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.clk_si570*, %struct.clk_si570** %12, align 8
  %21 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  %24 = call i64 @abs(i64 %23)
  %25 = mul nsw i64 %24, 10000
  %26 = load %struct.clk_si570*, %struct.clk_si570** %12, align 8
  %27 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @div64_u64(i64 %25, i32 %29)
  %31 = icmp ult i64 %30, 35
  br i1 %31, label %32, label %54

32:                                               ; preds = %18
  %33 = load %struct.clk_si570*, %struct.clk_si570** %12, align 8
  %34 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %35, %36
  %38 = load %struct.clk_si570*, %struct.clk_si570** %12, align 8
  %39 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @div64_u64(i64 %40, i32 2)
  %42 = add i64 %37, %41
  %43 = load %struct.clk_si570*, %struct.clk_si570** %12, align 8
  %44 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 @div64_u64(i64 %42, i32 %46)
  store i64 %47, i64* %9, align 8
  %48 = load %struct.clk_si570*, %struct.clk_si570** %12, align 8
  %49 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %10, align 4
  %51 = load %struct.clk_si570*, %struct.clk_si570** %12, align 8
  %52 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  br label %67

54:                                               ; preds = %18
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.clk_si570*, %struct.clk_si570** %12, align 8
  %57 = call i32 @si570_calc_divs(i64 %55, %struct.clk_si570* %56, i64* %9, i32* %10, i32* %11)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.clk_si570*, %struct.clk_si570** %12, align 8
  %62 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %69

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %32
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %67, %60, %17
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local %struct.clk_si570* @to_clk_si570(%struct.clk_hw*) #1

declare dso_local i64 @div64_u64(i64, i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @si570_calc_divs(i64, %struct.clk_si570*, i64*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
