; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlr/extr_wakeup.c_xlr_wakeup_secondary_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlr/extr_wakeup.c_xlr_wakeup_secondary_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_soc_info = type { i32, i32 }

@BOOT_CPU_READY = common dso_local global i32 0, align 4
@nlm_rmiboot_preboot = common dso_local global i32 0, align 4
@NR_CPUS = common dso_local global i32 0, align 4
@nlm_cpumask = common dso_local global i32 0, align 4
@NLM_THREADS_PER_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to wakeup core %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xlr_wakeup_secondary_cpus() #0 {
  %1 = alloca %struct.nlm_soc_info*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = load i32, i32* @BOOT_CPU_READY, align 4
  %7 = call i64* @nlm_get_boot_data(i32 %6)
  store i64* %7, i64** %5, align 8
  %8 = call %struct.nlm_soc_info* @nlm_get_node(i32 0)
  store %struct.nlm_soc_info* %8, %struct.nlm_soc_info** %1, align 8
  %9 = call i32 (...) @hard_smp_processor_id()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @nlm_rmiboot_preboot, align 4
  %11 = call i32 @nlm_set_nmi_handler(i32 %10)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %31, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @NR_CPUS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @cpumask_test_cpu(i32 %21, i32* @nlm_cpumask)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %16
  br label %31

25:                                               ; preds = %20
  %26 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %1, align 8
  %27 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @nlm_pic_send_ipi(i32 %28, i32 %29, i32 1, i32 1)
  br label %31

31:                                               ; preds = %25, %24
  %32 = load i32, i32* %2, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %1, align 8
  %36 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %74, %34
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (...) @nlm_cores_per_node()
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  store i32 1000000, i32* %3, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %3, align 4
  %44 = icmp ugt i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i64*, i64** %5, align 8
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @NLM_THREADS_PER_CORE, align 4
  %49 = mul i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load volatile i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %60

55:                                               ; preds = %45
  %56 = call i32 @udelay(i32 10)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, -1
  store i32 %59, i32* %3, align 4
  br label %42

60:                                               ; preds = %54, %42
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %2, align 4
  %65 = shl i32 1, %64
  %66 = load %struct.nlm_soc_info*, %struct.nlm_soc_info** %1, align 8
  %67 = getelementptr inbounds %struct.nlm_soc_info, %struct.nlm_soc_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %73

70:                                               ; preds = %60
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %2, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %37

77:                                               ; preds = %37
  ret i32 0
}

declare dso_local i64* @nlm_get_boot_data(i32) #1

declare dso_local %struct.nlm_soc_info* @nlm_get_node(i32) #1

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local i32 @nlm_set_nmi_handler(i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @nlm_pic_send_ipi(i32, i32, i32, i32) #1

declare dso_local i32 @nlm_cores_per_node(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
