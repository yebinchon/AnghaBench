; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qcom-cpufreq-nvmem.c_qcom_cpufreq_get_msm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qcom-cpufreq-nvmem.c_qcom_cpufreq_get_msm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QCOM_SMEM_HOST_ANY = common dso_local global i32 0, align 4
@MSM_ID_SMEM = common dso_local global i32 0, align 4
@NUM_OF_MSM8996_VERSIONS = common dso_local global i32 0, align 4
@MSM8996_V3 = common dso_local global i32 0, align 4
@MSM8996_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @qcom_cpufreq_get_msm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_cpufreq_get_msm_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @QCOM_SMEM_HOST_ANY, align 4
  %6 = load i32, i32* @MSM_ID_SMEM, align 4
  %7 = call i32* @qcom_smem_get(i32 %5, i32 %6, i64* %2)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @IS_ERR(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @NUM_OF_MSM8996_VERSIONS, align 4
  store i32 %12, i32* %1, align 4
  br label %26

13:                                               ; preds = %0
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %22 [
    i32 128, label %18
    i32 130, label %18
    i32 129, label %20
    i32 131, label %20
  ]

18:                                               ; preds = %13, %13
  %19 = load i32, i32* @MSM8996_V3, align 4
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %13, %13
  %21 = load i32, i32* @MSM8996_SG, align 4
  store i32 %21, i32* %4, align 4
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @NUM_OF_MSM8996_VERSIONS, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %20, %18
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32* @qcom_smem_get(i32, i32, i64*) #1

declare dso_local i64 @IS_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
