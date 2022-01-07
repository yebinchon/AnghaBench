; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_subcore.c_subcore_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_subcore.c_subcore_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SPRN_PVR = common dso_local global i32 0, align 4
@PVR_POWER8 = common dso_local global i32 0, align 4
@PVR_POWER8E = common dso_local global i32 0, align 4
@PVR_POWER8NVL = common dso_local global i32 0, align 4
@setup_max_cpus = common dso_local global i32 0, align 4
@threads_per_core = common dso_local global i32 0, align 4
@cpu_offline_mask = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cpu_subsys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dev_attr_subcores_per_core = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @subcore_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subcore_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SPRN_PVR, align 4
  %4 = call i32 @mfspr(i32 %3)
  %5 = call i32 @PVR_VER(i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @PVR_POWER8, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @PVR_POWER8E, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @PVR_POWER8NVL, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %34

18:                                               ; preds = %13, %9, %0
  %19 = load i32, i32* @setup_max_cpus, align 4
  %20 = load i32, i32* @threads_per_core, align 4
  %21 = srem i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %34

24:                                               ; preds = %18
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @alloc_cpumask_var(i32* @cpu_offline_mask, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = call i32 @set_subcores_per_core(i32 1)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_subsys, i32 0, i32 0), align 4
  %33 = call i32 @device_create_file(i32 %32, i32* @dev_attr_subcores_per_core)
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %24, %23, %17
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @PVR_VER(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @set_subcores_per_core(i32) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
