; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prminst44xx.c_omap4_prminst_global_warm_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prminst44xx.c_omap4_prminst_global_warm_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRM_INSTANCE_UNKNOWN = common dso_local global i64 0, align 8
@OMAP4430_PRM_PARTITION = common dso_local global i32 0, align 4
@OMAP4_PRM_RSTCTRL_OFFSET = common dso_local global i32 0, align 4
@OMAP4430_RST_GLOBAL_WARM_SW_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap4_prminst_global_warm_sw_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 (...) @omap4_prmst_get_prm_dev_inst()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @PRM_INSTANCE_UNKNOWN, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %25

8:                                                ; preds = %0
  %9 = load i32, i32* @OMAP4430_PRM_PARTITION, align 4
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* @OMAP4_PRM_RSTCTRL_OFFSET, align 4
  %12 = call i32 @omap4_prminst_read_inst_reg(i32 %9, i64 %10, i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @OMAP4430_RST_GLOBAL_WARM_SW_MASK, align 4
  %14 = load i32, i32* %1, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @OMAP4430_PRM_PARTITION, align 4
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* @OMAP4_PRM_RSTCTRL_OFFSET, align 4
  %20 = call i32 @omap4_prminst_write_inst_reg(i32 %16, i32 %17, i64 %18, i32 %19)
  %21 = load i32, i32* @OMAP4430_PRM_PARTITION, align 4
  %22 = load i64, i64* %2, align 8
  %23 = load i32, i32* @OMAP4_PRM_RSTCTRL_OFFSET, align 4
  %24 = call i32 @omap4_prminst_read_inst_reg(i32 %21, i64 %22, i32 %23)
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @omap4_prmst_get_prm_dev_inst(...) #1

declare dso_local i32 @omap4_prminst_read_inst_reg(i32, i64, i32) #1

declare dso_local i32 @omap4_prminst_write_inst_reg(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
