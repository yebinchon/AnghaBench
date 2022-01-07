; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-prima2/extr_platsmp.c_sirfsoc_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-prima2/extr_platsmp.c_sirfsoc_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.device_node = type { i32 }

@clk_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@clk_base = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@sirfsoc_secondary_startup = common dso_local global i32 0, align 4
@boot_lock = common dso_local global i32 0, align 4
@prima2_pen_release = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@SIRFSOC_CPU1_JUMPADDR_OFFSET = common dso_local global i64 0, align 8
@SIRFSOC_CPU1_WAKEMAGIC_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @sirfsoc_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %8 = load i32, i32* @clk_ids, align 4
  %9 = call %struct.device_node* @of_find_matching_node(i32* null, i32 %8)
  store %struct.device_node* %9, %struct.device_node** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %7, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = call i64 @of_iomap(%struct.device_node* %16, i32 0)
  store i64 %17, i64* @clk_base, align 8
  %18 = load i64, i64* @clk_base, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %15
  %24 = load i32, i32* @sirfsoc_secondary_startup, align 4
  %25 = call i32 @__pa_symbol(i32 %24)
  %26 = load i64, i64* @clk_base, align 8
  %27 = add nsw i64 %26, 700
  %28 = call i32 @__raw_writel(i32 %25, i64 %27)
  %29 = load i64, i64* @clk_base, align 8
  %30 = add nsw i64 %29, 696
  %31 = call i32 @__raw_writel(i32 1018125666, i64 %30)
  %32 = call i32 (...) @mb()
  %33 = call i32 @spin_lock(i32* @boot_lock)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @cpu_logical_map(i32 %34)
  store i32 %35, i32* @prima2_pen_release, align 4
  %36 = call i32 @sync_cache_w(i32* @prima2_pen_release)
  %37 = call i32 (...) @dsb_sev()
  %38 = load i32, i32* @jiffies, align 4
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 1, %39
  %41 = add nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %53, %23
  %44 = load i32, i32* @jiffies, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @time_before(i32 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = call i32 (...) @smp_rmb()
  %50 = load i32, i32* @prima2_pen_release, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  %54 = call i32 @udelay(i32 10)
  br label %43

55:                                               ; preds = %52, %43
  %56 = call i32 @spin_unlock(i32* @boot_lock)
  %57 = load i32, i32* @prima2_pen_release, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @ENOSYS, align 4
  %61 = sub nsw i32 0, %60
  br label %63

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %20, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.device_node* @of_find_matching_node(i32*, i32) #1

declare dso_local i64 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @sync_cache_w(i32*) #1

declare dso_local i32 @dsb_sev(...) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
