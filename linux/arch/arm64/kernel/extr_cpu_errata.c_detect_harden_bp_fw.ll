; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpu_errata.c_detect_harden_bp_fw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpu_errata.c_detect_harden_bp_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.arm_smccc_res = type { i64 }

@psci_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SMCCC_VERSION_1_0 = common dso_local global i64 0, align 8
@ARM_SMCCC_ARCH_FEATURES_FUNC_ID = common dso_local global i32 0, align 4
@ARM_SMCCC_ARCH_WORKAROUND_1 = common dso_local global i32 0, align 4
@call_hvc_arch_workaround_1 = common dso_local global i32 0, align 4
@call_smc_arch_workaround_1 = common dso_local global i32 0, align 4
@__smccc_workaround_1_smc_start = common dso_local global i8* null, align 8
@__smccc_workaround_1_smc_end = common dso_local global i8* null, align 8
@MIDR_CPU_MODEL_MASK = common dso_local global i32 0, align 4
@MIDR_QCOM_FALKOR = common dso_local global i32 0, align 4
@MIDR_QCOM_FALKOR_V1 = common dso_local global i32 0, align 4
@qcom_link_stack_sanitization = common dso_local global i32 0, align 4
@CONFIG_HARDEN_BRANCH_PREDICTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @detect_harden_bp_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_harden_bp_fw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arm_smccc_res, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @read_cpuid_id()
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @psci_ops, i32 0, i32 0), align 8
  %9 = load i64, i64* @SMCCC_VERSION_1_0, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %65

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @psci_ops, i32 0, i32 1), align 8
  switch i32 %13, label %40 [
    i32 129, label %14
    i32 128, label %26
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @ARM_SMCCC_ARCH_FEATURES_FUNC_ID, align 4
  %16 = load i32, i32* @ARM_SMCCC_ARCH_WORKAROUND_1, align 4
  %17 = call i32 @arm_smccc_1_1_hvc(i32 %15, i32 %16, %struct.arm_smccc_res* %5)
  %18 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %5, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  switch i32 %20, label %24 [
    i32 1, label %21
    i32 0, label %22
  ]

21:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %65

22:                                               ; preds = %14
  %23 = load i32, i32* @call_hvc_arch_workaround_1, align 4
  store i32 %23, i32* %2, align 4
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  br label %25

24:                                               ; preds = %14
  store i32 -1, i32* %1, align 4
  br label %65

25:                                               ; preds = %22
  br label %41

26:                                               ; preds = %12
  %27 = load i32, i32* @ARM_SMCCC_ARCH_FEATURES_FUNC_ID, align 4
  %28 = load i32, i32* @ARM_SMCCC_ARCH_WORKAROUND_1, align 4
  %29 = call i32 @arm_smccc_1_1_smc(i32 %27, i32 %28, %struct.arm_smccc_res* %5)
  %30 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  switch i32 %32, label %38 [
    i32 1, label %33
    i32 0, label %34
  ]

33:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %65

34:                                               ; preds = %26
  %35 = load i32, i32* @call_smc_arch_workaround_1, align 4
  store i32 %35, i32* %2, align 4
  %36 = load i8*, i8** @__smccc_workaround_1_smc_start, align 8
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** @__smccc_workaround_1_smc_end, align 8
  store i8* %37, i8** %4, align 8
  br label %39

38:                                               ; preds = %26
  store i32 -1, i32* %1, align 4
  br label %65

39:                                               ; preds = %34
  br label %41

40:                                               ; preds = %12
  store i32 -1, i32* %1, align 4
  br label %65

41:                                               ; preds = %39, %25
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MIDR_CPU_MODEL_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @MIDR_QCOM_FALKOR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MIDR_CPU_MODEL_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @MIDR_QCOM_FALKOR_V1, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %41
  %54 = load i32, i32* @qcom_link_stack_sanitization, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* @CONFIG_HARDEN_BRANCH_PREDICTOR, align 4
  %57 = call i64 @IS_ENABLED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %2, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @install_bp_hardening_cb(i32 %60, i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %59, %55
  store i32 1, i32* %1, align 4
  br label %65

65:                                               ; preds = %64, %40, %38, %33, %24, %21, %11
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @read_cpuid_id(...) #1

declare dso_local i32 @arm_smccc_1_1_hvc(i32, i32, %struct.arm_smccc_res*) #1

declare dso_local i32 @arm_smccc_1_1_smc(i32, i32, %struct.arm_smccc_res*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @install_bp_hardening_cb(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
