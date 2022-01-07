; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_clkout_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max9485.c_max9485_clkout_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max9485_rate = type { i64 }
%struct.clk_hw = type { i32 }

@max9485_rates = common dso_local global %struct.max9485_rate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @max9485_clkout_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max9485_clkout_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.max9485_rate*, align 8
  %9 = alloca %struct.max9485_rate*, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.max9485_rate* null, %struct.max9485_rate** %9, align 8
  %11 = load %struct.max9485_rate*, %struct.max9485_rate** @max9485_rates, align 8
  store %struct.max9485_rate* %11, %struct.max9485_rate** %8, align 8
  br label %12

12:                                               ; preds = %68, %3
  %13 = load %struct.max9485_rate*, %struct.max9485_rate** %8, align 8
  %14 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %12
  %18 = load %struct.max9485_rate*, %struct.max9485_rate** %8, align 8
  %19 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  store i64 %24, i64* %4, align 8
  br label %75

25:                                               ; preds = %17
  %26 = load %struct.max9485_rate*, %struct.max9485_rate** %8, align 8
  %27 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %33 = icmp ne %struct.max9485_rate* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.max9485_rate*, %struct.max9485_rate** %8, align 8
  %36 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  br label %75

38:                                               ; preds = %31
  %39 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %40 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.max9485_rate*, %struct.max9485_rate** %8, align 8
  %43 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %46 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  %49 = udiv i64 %48, 2
  %50 = add i64 %41, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %6, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %58 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  br label %64

60:                                               ; preds = %38
  %61 = load %struct.max9485_rate*, %struct.max9485_rate** %8, align 8
  %62 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i64 [ %59, %56 ], [ %63, %60 ]
  store i64 %65, i64* %4, align 8
  br label %75

66:                                               ; preds = %25
  %67 = load %struct.max9485_rate*, %struct.max9485_rate** %8, align 8
  store %struct.max9485_rate* %67, %struct.max9485_rate** %9, align 8
  br label %68

68:                                               ; preds = %66
  %69 = load %struct.max9485_rate*, %struct.max9485_rate** %8, align 8
  %70 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %69, i32 1
  store %struct.max9485_rate* %70, %struct.max9485_rate** %8, align 8
  br label %12

71:                                               ; preds = %12
  %72 = load %struct.max9485_rate*, %struct.max9485_rate** %9, align 8
  %73 = getelementptr inbounds %struct.max9485_rate, %struct.max9485_rate* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %71, %64, %34, %23
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
