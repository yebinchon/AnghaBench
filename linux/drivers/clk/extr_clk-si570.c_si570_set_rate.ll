; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si570 = type { i64, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@SI570_MIN_FREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"requested frequency %lu Hz is out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @si570_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si570_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_si570*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.clk_si570* @to_clk_si570(%struct.clk_hw* %11)
  store %struct.clk_si570* %12, %struct.clk_si570** %8, align 8
  %13 = load %struct.clk_si570*, %struct.clk_si570** %8, align 8
  %14 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %13, i32 0, i32 2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @SI570_MIN_FREQ, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.clk_si570*, %struct.clk_si570** %8, align 8
  %22 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19, %3
  %26 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %62

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.clk_si570*, %struct.clk_si570** %8, align 8
  %35 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  %38 = call i64 @abs(i64 %37)
  %39 = mul nsw i64 %38, 10000
  %40 = load %struct.clk_si570*, %struct.clk_si570** %8, align 8
  %41 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @div64_u64(i64 %39, i64 %42)
  %44 = icmp slt i32 %43, 35
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load %struct.clk_si570*, %struct.clk_si570** %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @si570_set_frequency_small(%struct.clk_si570* %46, i64 %47)
  store i32 %48, i32* %10, align 4
  br label %53

49:                                               ; preds = %32
  %50 = load %struct.clk_si570*, %struct.clk_si570** %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @si570_set_frequency(%struct.clk_si570* %50, i64 %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %62

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.clk_si570*, %struct.clk_si570** %8, align 8
  %61 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %56, %25
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.clk_si570* @to_clk_si570(%struct.clk_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @div64_u64(i64, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @si570_set_frequency_small(%struct.clk_si570*, i64) #1

declare dso_local i32 @si570_set_frequency(%struct.clk_si570*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
