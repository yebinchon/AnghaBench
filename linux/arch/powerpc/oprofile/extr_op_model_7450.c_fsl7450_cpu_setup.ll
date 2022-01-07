; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_7450.c_fsl7450_cpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_7450.c_fsl7450_cpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_counter_config = type { i32 }

@SPRN_MMCR0 = common dso_local global i32 0, align 4
@mmcr0_val = common dso_local global i32 0, align 4
@SPRN_MMCR1 = common dso_local global i32 0, align 4
@mmcr1_val = common dso_local global i32 0, align 4
@num_pmcs = common dso_local global i32 0, align 4
@SPRN_MMCR2 = common dso_local global i32 0, align 4
@mmcr2_val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*)* @fsl7450_cpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl7450_cpu_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %3 = call i32 (...) @pmc_stop_ctrs()
  %4 = load i32, i32* @SPRN_MMCR0, align 4
  %5 = load i32, i32* @mmcr0_val, align 4
  %6 = call i32 @mtspr(i32 %4, i32 %5)
  %7 = load i32, i32* @SPRN_MMCR1, align 4
  %8 = load i32, i32* @mmcr1_val, align 4
  %9 = call i32 @mtspr(i32 %7, i32 %8)
  %10 = load i32, i32* @num_pmcs, align 4
  %11 = icmp sgt i32 %10, 4
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @SPRN_MMCR2, align 4
  %14 = load i32, i32* @mmcr2_val, align 4
  %15 = call i32 @mtspr(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local i32 @pmc_stop_ctrs(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
