; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_clk_rpm_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_clk_rpm_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rpm = type { i64, i64, %struct.clk_rpm* }

@rpm_clk_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_rpm_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rpm_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_rpm*, align 8
  %8 = alloca %struct.clk_rpm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %17 = call %struct.clk_rpm* @to_clk_rpm(%struct.clk_hw* %16)
  store %struct.clk_rpm* %17, %struct.clk_rpm** %7, align 8
  %18 = load %struct.clk_rpm*, %struct.clk_rpm** %7, align 8
  %19 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %18, i32 0, i32 2
  %20 = load %struct.clk_rpm*, %struct.clk_rpm** %19, align 8
  store %struct.clk_rpm* %20, %struct.clk_rpm** %8, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %21 = call i32 @mutex_lock(i32* @rpm_clk_lock)
  %22 = load %struct.clk_rpm*, %struct.clk_rpm** %7, align 8
  %23 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %65

27:                                               ; preds = %3
  %28 = load %struct.clk_rpm*, %struct.clk_rpm** %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @to_active_sleep(%struct.clk_rpm* %28, i64 %29, i64* %11, i64* %12)
  %31 = load %struct.clk_rpm*, %struct.clk_rpm** %8, align 8
  %32 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.clk_rpm*, %struct.clk_rpm** %8, align 8
  %37 = load %struct.clk_rpm*, %struct.clk_rpm** %8, align 8
  %38 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @to_active_sleep(%struct.clk_rpm* %36, i64 %39, i64* %13, i64* %14)
  br label %41

41:                                               ; preds = %35, %27
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @max(i64 %42, i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load %struct.clk_rpm*, %struct.clk_rpm** %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @clk_rpm_set_rate_active(%struct.clk_rpm* %45, i64 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %65

51:                                               ; preds = %41
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i64 @max(i64 %52, i64 %53)
  store i64 %54, i64* %10, align 8
  %55 = load %struct.clk_rpm*, %struct.clk_rpm** %7, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @clk_rpm_set_rate_sleep(%struct.clk_rpm* %55, i64 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %65

61:                                               ; preds = %51
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.clk_rpm*, %struct.clk_rpm** %7, align 8
  %64 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %60, %50, %26
  %66 = call i32 @mutex_unlock(i32* @rpm_clk_lock)
  %67 = load i32, i32* %15, align 4
  ret i32 %67
}

declare dso_local %struct.clk_rpm* @to_clk_rpm(%struct.clk_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @to_active_sleep(%struct.clk_rpm*, i64, i64*, i64*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @clk_rpm_set_rate_active(%struct.clk_rpm*, i64) #1

declare dso_local i32 @clk_rpm_set_rate_sleep(%struct.clk_rpm*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
