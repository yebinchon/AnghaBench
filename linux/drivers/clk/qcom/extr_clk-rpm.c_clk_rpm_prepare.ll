; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_clk_rpm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rpm.c_clk_rpm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rpm = type { i32, i64, i32, %struct.clk_rpm* }

@rpm_clk_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_rpm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rpm_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_rpm*, align 8
  %4 = alloca %struct.clk_rpm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %13 = call %struct.clk_rpm* @to_clk_rpm(%struct.clk_hw* %12)
  store %struct.clk_rpm* %13, %struct.clk_rpm** %3, align 8
  %14 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %15 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %14, i32 0, i32 3
  %16 = load %struct.clk_rpm*, %struct.clk_rpm** %15, align 8
  store %struct.clk_rpm* %16, %struct.clk_rpm** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %17 = call i32 @mutex_lock(i32* @rpm_clk_lock)
  %18 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %19 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %87

23:                                               ; preds = %1
  %24 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %25 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %26 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @to_active_sleep(%struct.clk_rpm* %24, i32 %27, i64* %5, i64* %6)
  %29 = load %struct.clk_rpm*, %struct.clk_rpm** %4, align 8
  %30 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.clk_rpm*, %struct.clk_rpm** %4, align 8
  %35 = load %struct.clk_rpm*, %struct.clk_rpm** %4, align 8
  %36 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @to_active_sleep(%struct.clk_rpm* %34, i32 %37, i64* %7, i64* %8)
  br label %39

39:                                               ; preds = %33, %23
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @max(i64 %40, i64 %41)
  store i64 %42, i64* %9, align 8
  %43 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %44 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %47, %39
  %55 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @clk_rpm_set_rate_active(%struct.clk_rpm* %55, i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %87

61:                                               ; preds = %54
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @max(i64 %62, i64 %63)
  store i64 %64, i64* %10, align 8
  %65 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %66 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %69, %61
  %77 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @clk_rpm_set_rate_sleep(%struct.clk_rpm* %77, i64 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @clk_rpm_set_rate_active(%struct.clk_rpm* %83, i64 %84)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %60, %22
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load %struct.clk_rpm*, %struct.clk_rpm** %3, align 8
  %92 = getelementptr inbounds %struct.clk_rpm, %struct.clk_rpm* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = call i32 @mutex_unlock(i32* @rpm_clk_lock)
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local %struct.clk_rpm* @to_clk_rpm(%struct.clk_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @to_active_sleep(%struct.clk_rpm*, i32, i64*, i64*) #1

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
