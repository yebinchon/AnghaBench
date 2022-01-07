; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-versatile/extr_platsmp.c_versatile_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-versatile/extr_platsmp.c_versatile_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@versatile_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@versatile_cpu_release = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @versatile_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = call i32 @raw_spin_lock(i32* @versatile_lock)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpu_logical_map(i32 %7)
  %9 = call i32 @versatile_write_cpu_release(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @cpumask_of(i32 %10)
  %12 = call i32 @arch_send_wakeup_ipi_mask(i32 %11)
  %13 = load i32, i32* @jiffies, align 4
  %14 = load i32, i32* @HZ, align 4
  %15 = mul nsw i32 1, %14
  %16 = add nsw i32 %13, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %28, %2
  %19 = load i32, i32* @jiffies, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @time_before(i32 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = call i32 (...) @smp_rmb()
  %25 = load i32, i32* @versatile_cpu_release, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %30

28:                                               ; preds = %23
  %29 = call i32 @udelay(i32 10)
  br label %18

30:                                               ; preds = %27, %18
  %31 = call i32 @raw_spin_unlock(i32* @versatile_lock)
  %32 = load i32, i32* @versatile_cpu_release, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOSYS, align 4
  %36 = sub nsw i32 0, %35
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  ret i32 %39
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @versatile_write_cpu_release(i32) #1

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @arch_send_wakeup_ipi_mask(i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
