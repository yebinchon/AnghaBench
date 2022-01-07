; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_platsmp-a9.c_mvebu_cortex_a9_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_platsmp-a9.c_mvebu_cortex_a9_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Booting CPU %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"marvell,armada375\00", align 1
@mvebu_cortex_a9_secondary_startup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not start the secondary CPU: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @mvebu_cortex_a9_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_cortex_a9_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @cpu_logical_map(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @mvebu_cortex_a9_secondary_startup, align 4
  %16 = call i32 @mvebu_system_controller_set_cpu_boot_addr(i32 %15)
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @mvebu_cortex_a9_secondary_startup, align 4
  %20 = call i32 @mvebu_pmsu_set_cpu_boot_addr(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %14
  %22 = call i32 (...) @smp_wmb()
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @cpumask_of(i32 %23)
  %25 = call i32 @arch_send_wakeup_ipi_mask(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mvebu_cpu_reset_deassert(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @mvebu_system_controller_set_cpu_boot_addr(i32) #1

declare dso_local i32 @mvebu_pmsu_set_cpu_boot_addr(i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @arch_send_wakeup_ipi_mask(i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @mvebu_cpu_reset_deassert(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
