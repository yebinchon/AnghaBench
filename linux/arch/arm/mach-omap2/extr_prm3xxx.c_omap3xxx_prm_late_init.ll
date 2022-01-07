; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm3xxx.c_omap3xxx_prm_late_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm3xxx.c_omap3xxx_prm_late_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.device_node = type { i32 }

@prm_features = common dso_local global i32 0, align 4
@PRM_HAS_IO_WAKEUP = common dso_local global i32 0, align 4
@omap3_prm_reconfigure_io_chain = common dso_local global i32 0, align 4
@omap3_prcm_irq_setup = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@omap3430_pre_es3_1_reconfigure_io_chain = common dso_local global i32 0, align 4
@omap3_prm_dt_match_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PRM: no device tree node for interrupt?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @omap3xxx_prm_late_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3xxx_prm_late_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @prm_features, align 4
  %5 = load i32, i32* @PRM_HAS_IO_WAKEUP, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %38

9:                                                ; preds = %0
  %10 = call i64 (...) @omap3_has_io_chain_ctrl()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @omap3_prm_reconfigure_io_chain, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap3_prcm_irq_setup, i32 0, i32 1), align 4
  br label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @omap3430_pre_es3_1_reconfigure_io_chain, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap3_prcm_irq_setup, i32 0, i32 1), align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* @omap3_prm_dt_match_table, align 4
  %18 = call %struct.device_node* @of_find_matching_node(i32* null, i32 %17)
  store %struct.device_node* %18, %struct.device_node** %2, align 8
  %19 = load %struct.device_node*, %struct.device_node** %2, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %1, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.device_node*, %struct.device_node** %2, align 8
  %27 = call i32 @of_irq_get(%struct.device_node* %26, i32 0)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @EPROBE_DEFER, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %1, align 4
  br label %38

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap3_prcm_irq_setup, i32 0, i32 0), align 4
  %36 = call i32 (...) @omap3xxx_prm_enable_io_wakeup()
  %37 = call i32 @omap_prcm_register_chain_handler(%struct.TYPE_3__* @omap3_prcm_irq_setup)
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %34, %32, %21, %8
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i64 @omap3_has_io_chain_ctrl(...) #1

declare dso_local %struct.device_node* @of_find_matching_node(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32 @omap3xxx_prm_enable_io_wakeup(...) #1

declare dso_local i32 @omap_prcm_register_chain_handler(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
