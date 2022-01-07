; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap44xx_prm_reconfigure_io_chain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap44xx_prm_reconfigure_io_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PRM_INSTANCE_UNKNOWN = common dso_local global i64 0, align 8
@OMAP4430_WUCLK_CTRL_MASK = common dso_local global i32 0, align 4
@omap4_prcm_irq_setup = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@OMAP4430_WUCLK_STATUS_MASK = common dso_local global i32 0, align 4
@OMAP4430_WUCLK_STATUS_SHIFT = common dso_local global i32 0, align 4
@MAX_IOPAD_LATCH_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"PRM: I/O chain clock line assertion timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"PRM: I/O chain clock line deassertion timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap44xx_prm_reconfigure_io_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap44xx_prm_reconfigure_io_chain() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = call i64 (...) @omap4_prmst_get_prm_dev_inst()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @PRM_INSTANCE_UNKNOWN, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %54

8:                                                ; preds = %0
  %9 = load i32, i32* @OMAP4430_WUCLK_CTRL_MASK, align 4
  %10 = load i32, i32* @OMAP4430_WUCLK_CTRL_MASK, align 4
  %11 = load i64, i64* %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @omap4_prcm_irq_setup, i32 0, i32 0), align 4
  %13 = call i32 @omap4_prm_rmw_inst_reg_bits(i32 %9, i32 %10, i64 %11, i32 %12)
  %14 = load i64, i64* %2, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @omap4_prcm_irq_setup, i32 0, i32 0), align 4
  %16 = call i32 @omap4_prm_read_inst_reg(i64 %14, i32 %15)
  %17 = load i32, i32* @OMAP4430_WUCLK_STATUS_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @OMAP4430_WUCLK_STATUS_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @MAX_IOPAD_LATCH_TIME, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @omap_test_timeout(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @MAX_IOPAD_LATCH_TIME, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %8
  %32 = load i32, i32* @OMAP4430_WUCLK_CTRL_MASK, align 4
  %33 = load i64, i64* %2, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @omap4_prcm_irq_setup, i32 0, i32 0), align 4
  %35 = call i32 @omap4_prm_rmw_inst_reg_bits(i32 %32, i32 0, i64 %33, i32 %34)
  %36 = load i64, i64* %2, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @omap4_prcm_irq_setup, i32 0, i32 0), align 4
  %38 = call i32 @omap4_prm_read_inst_reg(i64 %36, i32 %37)
  %39 = load i32, i32* @OMAP4430_WUCLK_STATUS_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @OMAP4430_WUCLK_STATUS_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @MAX_IOPAD_LATCH_TIME, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @omap_test_timeout(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @MAX_IOPAD_LATCH_TIME, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %31
  br label %54

54:                                               ; preds = %53, %7
  ret void
}

declare dso_local i64 @omap4_prmst_get_prm_dev_inst(...) #1

declare dso_local i32 @omap4_prm_rmw_inst_reg_bits(i32, i32, i64, i32) #1

declare dso_local i32 @omap_test_timeout(i32, i32, i32) #1

declare dso_local i32 @omap4_prm_read_inst_reg(i64, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
