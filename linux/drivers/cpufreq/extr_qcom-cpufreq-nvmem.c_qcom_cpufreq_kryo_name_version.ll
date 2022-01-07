; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qcom-cpufreq-nvmem.c_qcom_cpufreq_kryo_name_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qcom-cpufreq-nvmem.c_qcom_cpufreq_kryo_name_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvmem_cell = type { i32 }
%struct.qcom_cpufreq_drv = type { i32 }

@NUM_OF_MSM8996_VERSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Not Snapdragon 820/821!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.nvmem_cell*, %struct.qcom_cpufreq_drv*)* @qcom_cpufreq_kryo_name_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_cpufreq_kryo_name_version(%struct.device* %0, %struct.nvmem_cell* %1, %struct.qcom_cpufreq_drv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.nvmem_cell*, align 8
  %7 = alloca %struct.qcom_cpufreq_drv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.nvmem_cell* %1, %struct.nvmem_cell** %6, align 8
  store %struct.qcom_cpufreq_drv* %2, %struct.qcom_cpufreq_drv** %7, align 8
  %11 = call i32 (...) @qcom_cpufreq_get_msm_id()
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @NUM_OF_MSM8996_VERSIONS, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.nvmem_cell*, %struct.nvmem_cell** %6, align 8
  %22 = call i64* @nvmem_cell_read(%struct.nvmem_cell* %21, i64* %8)
  store i64* %22, i64** %9, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = call i64 @IS_ERR(i64* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64*, i64** %9, align 8
  %28 = call i32 @PTR_ERR(i64* %27)
  store i32 %28, i32* %4, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %46 [
    i32 128, label %31
    i32 129, label %38
  ]

31:                                               ; preds = %29
  %32 = load i64*, i64** %9, align 8
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 1, %34
  %36 = load %struct.qcom_cpufreq_drv*, %struct.qcom_cpufreq_drv** %7, align 8
  %37 = getelementptr inbounds %struct.qcom_cpufreq_drv, %struct.qcom_cpufreq_drv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = add i32 %41, 4
  %43 = shl i32 1, %42
  %44 = load %struct.qcom_cpufreq_drv*, %struct.qcom_cpufreq_drv** %7, align 8
  %45 = getelementptr inbounds %struct.qcom_cpufreq_drv, %struct.qcom_cpufreq_drv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %48

46:                                               ; preds = %29
  %47 = call i32 (...) @BUG()
  br label %48

48:                                               ; preds = %46, %38, %31
  %49 = load i64*, i64** %9, align 8
  %50 = call i32 @kfree(i64* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %26, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @qcom_cpufreq_get_msm_id(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64* @nvmem_cell_read(%struct.nvmem_cell*, i64*) #1

declare dso_local i64 @IS_ERR(i64*) #1

declare dso_local i32 @PTR_ERR(i64*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
