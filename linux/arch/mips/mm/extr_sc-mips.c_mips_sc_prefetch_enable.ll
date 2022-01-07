; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-mips.c_mips_sc_prefetch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_sc-mips.c_mips_sc_prefetch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CM_REV_CM2_5 = common dso_local global i64 0, align 8
@CM_GCR_L2_PFT_CONTROL_NPFT = common dso_local global i64 0, align 8
@CM_GCR_L2_PFT_CONTROL_PAGEMASK = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@CM_GCR_L2_PFT_CONTROL_PFTEN = common dso_local global i64 0, align 8
@CM_GCR_L2_PFT_CONTROL_B_PORTID = common dso_local global i32 0, align 4
@CM_GCR_L2_PFT_CONTROL_B_CEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_sc_prefetch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_sc_prefetch_enable() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @mips_cm_revision()
  %3 = load i64, i64* @CM_REV_CM2_5, align 8
  %4 = icmp slt i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %31

6:                                                ; preds = %0
  %7 = call i64 (...) @read_gcr_l2_pft_control()
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @CM_GCR_L2_PFT_CONTROL_NPFT, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load i64, i64* @CM_GCR_L2_PFT_CONTROL_PAGEMASK, align 8
  %14 = xor i64 %13, -1
  %15 = load i64, i64* %1, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* @PAGE_MASK, align 8
  %18 = load i64, i64* @CM_GCR_L2_PFT_CONTROL_PAGEMASK, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* %1, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* @CM_GCR_L2_PFT_CONTROL_PFTEN, align 8
  %23 = load i64, i64* %1, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @write_gcr_l2_pft_control(i64 %25)
  %27 = load i32, i32* @CM_GCR_L2_PFT_CONTROL_B_PORTID, align 4
  %28 = load i32, i32* @CM_GCR_L2_PFT_CONTROL_B_CEN, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @set_gcr_l2_pft_control_b(i32 %29)
  br label %31

31:                                               ; preds = %5, %12, %6
  ret void
}

declare dso_local i64 @mips_cm_revision(...) #1

declare dso_local i64 @read_gcr_l2_pft_control(...) #1

declare dso_local i32 @write_gcr_l2_pft_control(i64) #1

declare dso_local i32 @set_gcr_l2_pft_control_b(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
