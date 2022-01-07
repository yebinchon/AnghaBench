; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-mips.c_mips_sc_prefetch_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-mips.c_mips_sc_prefetch_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CM_REV_CM2_5 = common dso_local global i64 0, align 8
@CM_GCR_L2_PFT_CONTROL_PFTEN = common dso_local global i32 0, align 4
@CM_GCR_L2_PFT_CONTROL_B_PORTID = common dso_local global i32 0, align 4
@CM_GCR_L2_PFT_CONTROL_B_CEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_sc_prefetch_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_sc_prefetch_disable() #0 {
  %1 = call i64 (...) @mips_cm_revision()
  %2 = load i64, i64* @CM_REV_CM2_5, align 8
  %3 = icmp slt i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %12

5:                                                ; preds = %0
  %6 = load i32, i32* @CM_GCR_L2_PFT_CONTROL_PFTEN, align 4
  %7 = call i32 @clear_gcr_l2_pft_control(i32 %6)
  %8 = load i32, i32* @CM_GCR_L2_PFT_CONTROL_B_PORTID, align 4
  %9 = load i32, i32* @CM_GCR_L2_PFT_CONTROL_B_CEN, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @clear_gcr_l2_pft_control_b(i32 %10)
  br label %12

12:                                               ; preds = %5, %4
  ret void
}

declare dso_local i64 @mips_cm_revision(...) #1

declare dso_local i32 @clear_gcr_l2_pft_control(i32) #1

declare dso_local i32 @clear_gcr_l2_pft_control_b(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
