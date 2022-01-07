; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-smd-rpm.c_clk_smd_rpm_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-smd-rpm.c_clk_smd_rpm_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_smd_rpm = type { i32, i64, i32, %struct.clk_smd_rpm* }

@rpm_smd_clk_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_smd_rpm_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_smd_rpm_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_smd_rpm*, align 8
  %4 = alloca %struct.clk_smd_rpm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %11 = call %struct.clk_smd_rpm* @to_clk_smd_rpm(%struct.clk_hw* %10)
  store %struct.clk_smd_rpm* %11, %struct.clk_smd_rpm** %3, align 8
  %12 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %13 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %12, i32 0, i32 3
  %14 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %13, align 8
  store %struct.clk_smd_rpm* %14, %struct.clk_smd_rpm** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %15 = call i32 @mutex_lock(i32* @rpm_smd_clk_lock)
  %16 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %17 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %4, align 8
  %23 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %4, align 8
  %28 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %4, align 8
  %29 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @to_active_sleep(%struct.clk_smd_rpm* %27, i32 %30, i64* %5, i64* %6)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %34 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  br label %46

44:                                               ; preds = %32
  %45 = load i64, i64* %5, align 8
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi i64 [ %43, %37 ], [ %45, %44 ]
  store i64 %47, i64* %7, align 8
  %48 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @clk_smd_rpm_set_rate_active(%struct.clk_smd_rpm* %48, i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %79

54:                                               ; preds = %46
  %55 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %56 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  br label %68

66:                                               ; preds = %54
  %67 = load i64, i64* %6, align 8
  br label %68

68:                                               ; preds = %66, %59
  %69 = phi i64 [ %65, %59 ], [ %67, %66 ]
  store i64 %69, i64* %8, align 8
  %70 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @clk_smd_rpm_set_rate_sleep(%struct.clk_smd_rpm* %70, i64 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %79

76:                                               ; preds = %68
  %77 = load %struct.clk_smd_rpm*, %struct.clk_smd_rpm** %3, align 8
  %78 = getelementptr inbounds %struct.clk_smd_rpm, %struct.clk_smd_rpm* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %75, %53, %20
  %80 = call i32 @mutex_unlock(i32* @rpm_smd_clk_lock)
  ret void
}

declare dso_local %struct.clk_smd_rpm* @to_clk_smd_rpm(%struct.clk_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @to_active_sleep(%struct.clk_smd_rpm*, i32, i64*, i64*) #1

declare dso_local i32 @clk_smd_rpm_set_rate_active(%struct.clk_smd_rpm*, i64) #1

declare dso_local i32 @clk_smd_rpm_set_rate_sleep(%struct.clk_smd_rpm*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
