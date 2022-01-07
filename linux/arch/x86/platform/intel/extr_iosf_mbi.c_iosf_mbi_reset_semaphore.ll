; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_reset_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_reset_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@iosf_mbi_sem_address = common dso_local global i32 0, align 4
@PUNIT_SEMAPHORE_BIT = common dso_local global i32 0, align 4
@mbi_pdev = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error P-Unit semaphore reset failed\0A\00", align 1
@iosf_mbi_pm_qos = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@iosf_mbi_pmic_bus_access_notifier = common dso_local global i32 0, align 4
@MBI_PMIC_BUS_ACCESS_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @iosf_mbi_reset_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iosf_mbi_reset_semaphore() #0 {
  %1 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %2 = load i32, i32* @MBI_REG_READ, align 4
  %3 = load i32, i32* @iosf_mbi_sem_address, align 4
  %4 = load i32, i32* @PUNIT_SEMAPHORE_BIT, align 4
  %5 = call i64 @iosf_mbi_modify(i32 %1, i32 %2, i32 %3, i32 0, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mbi_pdev, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @dev_err(i32* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %7, %0
  %12 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %13 = call i32 @pm_qos_update_request(i32* @iosf_mbi_pm_qos, i32 %12)
  %14 = load i32, i32* @MBI_PMIC_BUS_ACCESS_END, align 4
  %15 = call i32 @blocking_notifier_call_chain(i32* @iosf_mbi_pmic_bus_access_notifier, i32 %14, i32* null)
  ret void
}

declare dso_local i64 @iosf_mbi_modify(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pm_qos_update_request(i32*, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
