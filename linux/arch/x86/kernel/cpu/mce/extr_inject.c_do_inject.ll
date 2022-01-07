; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_inject.c_do_inject.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_inject.c_do_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@i_mce = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MCI_STATUS_MISCV = common dso_local global i32 0, align 4
@MCI_STATUS_SYNDV = common dso_local global i32 0, align 4
@inj_type = common dso_local global i32 0, align 4
@SW_INJ = common dso_local global i32 0, align 4
@MCG_STATUS_MCIP = common dso_local global i32 0, align 4
@MCG_STATUS_EIPV = common dso_local global i32 0, align 4
@MCI_STATUS_PCC = common dso_local global i32 0, align 4
@MCG_STATUS_RIPV = common dso_local global i32 0, align 4
@MCI_STATUS_DEFERRED = common dso_local global i32 0, align 4
@MCI_STATUS_UC = common dso_local global i32 0, align 4
@X86_FEATURE_AMD_DCM = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@prepare_msrs = common dso_local global i32 0, align 4
@trigger_dfr_int = common dso_local global i32 0, align 4
@trigger_thr_int = common dso_local global i32 0, align 4
@trigger_mce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_inject() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 0), align 8
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 1), align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @rdtsc_ordered()
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 7), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 6), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @MCI_STATUS_MISCV, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  %12 = or i32 %11, %10
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  br label %13

13:                                               ; preds = %9, %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 5), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @MCI_STATUS_SYNDV, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  %19 = or i32 %18, %17
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* @inj_type, align 4
  %22 = load i32, i32* @SW_INJ, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @mce_inject_log(%struct.TYPE_5__* @i_mce)
  br label %100

26:                                               ; preds = %20
  %27 = load i32, i32* @MCG_STATUS_MCIP, align 4
  %28 = load i32, i32* @MCG_STATUS_EIPV, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  %31 = load i32, i32* @MCI_STATUS_PCC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @MCG_STATUS_RIPV, align 4
  %36 = load i32, i32* %1, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* @inj_type, align 4
  %40 = icmp eq i32 %39, 129
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* @MCI_STATUS_DEFERRED, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  %44 = or i32 %43, %42
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  %46 = load i32, i32* @MCI_STATUS_UC, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  %50 = or i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 2), align 8
  br label %51

51:                                               ; preds = %41, %38
  %52 = load i32, i32* @X86_FEATURE_AMD_DCM, align 4
  %53 = call i64 @boot_cpu_has(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_cpu_data, i32 0, i32 0), align 4
  %60 = icmp slt i32 %59, 23
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @amd_get_nb_id(i32 %62)
  %64 = call i32 @toggle_nb_mca_mst_cpu(i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @amd_get_nb_id(i32 %65)
  %67 = call i32 @get_nbc_for_node(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %58, %55, %51
  %69 = call i32 (...) @get_online_cpus()
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @cpu_online(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %98

74:                                               ; preds = %68
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @toggle_hw_mce_inject(i32 %75, i32 1)
  %77 = load i32, i32* %1, align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 3), align 4
  %78 = load i32, i32* @inj_type, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i_mce, i32 0, i32 4), align 8
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @prepare_msrs, align 4
  %81 = call i32 @smp_call_function_single(i32 %79, i32 %80, %struct.TYPE_5__* @i_mce, i32 0)
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @toggle_hw_mce_inject(i32 %82, i32 0)
  %84 = load i32, i32* @inj_type, align 4
  switch i32 %84, label %93 [
    i32 129, label %85
    i32 128, label %89
  ]

85:                                               ; preds = %74
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @trigger_dfr_int, align 4
  %88 = call i32 @smp_call_function_single(i32 %86, i32 %87, %struct.TYPE_5__* null, i32 0)
  br label %97

89:                                               ; preds = %74
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @trigger_thr_int, align 4
  %92 = call i32 @smp_call_function_single(i32 %90, i32 %91, %struct.TYPE_5__* null, i32 0)
  br label %97

93:                                               ; preds = %74
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @trigger_mce, align 4
  %96 = call i32 @smp_call_function_single(i32 %94, i32 %95, %struct.TYPE_5__* null, i32 0)
  br label %97

97:                                               ; preds = %93, %89, %85
  br label %98

98:                                               ; preds = %97, %73
  %99 = call i32 (...) @put_online_cpus()
  br label %100

100:                                              ; preds = %98, %24
  ret void
}

declare dso_local i32 @rdtsc_ordered(...) #1

declare dso_local i32 @mce_inject_log(%struct.TYPE_5__*) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @toggle_nb_mca_mst_cpu(i32) #1

declare dso_local i32 @amd_get_nb_id(i32) #1

declare dso_local i32 @get_nbc_for_node(i32) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @toggle_hw_mce_inject(i32, i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
