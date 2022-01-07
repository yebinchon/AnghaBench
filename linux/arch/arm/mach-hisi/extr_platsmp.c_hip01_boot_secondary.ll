; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_platsmp.c_hip01_boot_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_platsmp.c_hip01_boot_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.device_node = type { i32 }

@secondary_startup = common dso_local global i32 0, align 4
@HIP01_BOOT_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"hisilicon,hip01-sysctrl\00", align 1
@ctrl_base = common dso_local global i64 0, align 8
@REG_SC_CTRL = common dso_local global i64 0, align 8
@SC_SCTL_REMAP_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @hip01_boot_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hip01_boot_secondary(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @secondary_startup, align 4
  %10 = call i32 @__pa_symbol(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @HIP01_BOOT_ADDRESS, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @hip01_set_boot_addr(i32 %11, i32 %12)
  %14 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  %15 = load %struct.device_node*, %struct.device_node** %8, align 8
  %16 = icmp ne %struct.device_node* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.device_node*, %struct.device_node** %8, align 8
  %24 = call i64 @of_iomap(%struct.device_node* %23, i32 0)
  store i64 %24, i64* @ctrl_base, align 8
  %25 = load i64, i64* @ctrl_base, align 8
  %26 = load i64, i64* @REG_SC_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = call i32 (...) @barrier()
  %30 = load i32, i32* @SC_SCTL_REMAP_CLR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = call i32 (...) @barrier()
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* @ctrl_base, align 8
  %36 = load i64, i64* @REG_SC_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel_relaxed(i32 %34, i64 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @hip01_set_cpu(i32 %39, i32 1)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %22, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @hip01_set_boot_addr(i32, i32) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @hip01_set_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
