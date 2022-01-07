; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sunxi/extr_mc_smp.c_sunxi_mc_smp_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sunxi/extr_mc_smp.c_sunxi_mc_smp_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@cpucfg_base = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SUNXI_NR_CLUSTERS = common dso_local global i32 0, align 4
@SUNXI_CPUS_PER_CLUSTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@boot_lock = common dso_local global i32 0, align 4
@sunxi_mc_smp_cpu_table = common dso_local global i64** null, align 8
@sunxi_mc_smp_first_comer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @sunxi_mc_smp_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mc_smp_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @cpu_logical_map(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %13, i32 1)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @cpucfg_base, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SUNXI_NR_CLUSTERS, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SUNXI_CPUS_PER_CLUSTER, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %69

31:                                               ; preds = %24
  %32 = call i32 @spin_lock_irq(i32* @boot_lock)
  %33 = load i64**, i64*** @sunxi_mc_smp_cpu_table, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64*, i64** %33, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %57

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @sunxi_mc_smp_cluster_is_down(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  store i32 1, i32* @sunxi_mc_smp_first_comer, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @sunxi_cluster_powerup(i32 %49)
  br label %52

51:                                               ; preds = %44
  store i32 0, i32* @sunxi_mc_smp_first_comer, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = call i32 @sync_cache_w(i32* @sunxi_mc_smp_first_comer)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @sunxi_cpu_powerup(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %43
  %58 = load i64**, i64*** @sunxi_mc_smp_cpu_table, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = call i32 @spin_unlock_irq(i32* @boot_lock)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %28, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @MPIDR_AFFINITY_LEVEL(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @sunxi_mc_smp_cluster_is_down(i32) #1

declare dso_local i32 @sunxi_cluster_powerup(i32) #1

declare dso_local i32 @sync_cache_w(i32*) #1

declare dso_local i32 @sunxi_cpu_powerup(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
