; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_enable_tdp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_enable_tdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMX_EPT_READABLE_MASK = common dso_local global i64 0, align 8
@enable_ept_ad_bits = common dso_local global i64 0, align 8
@VMX_EPT_ACCESS_BIT = common dso_local global i64 0, align 8
@VMX_EPT_DIRTY_BIT = common dso_local global i64 0, align 8
@VMX_EPT_EXECUTABLE_MASK = common dso_local global i32 0, align 4
@VMX_EPT_RWX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vmx_enable_tdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_enable_tdp() #0 {
  %1 = load i64, i64* @VMX_EPT_READABLE_MASK, align 8
  %2 = load i64, i64* @enable_ept_ad_bits, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i64, i64* @VMX_EPT_ACCESS_BIT, align 8
  br label %7

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi i64 [ %5, %4 ], [ 0, %6 ]
  %9 = load i64, i64* @enable_ept_ad_bits, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i64, i64* @VMX_EPT_DIRTY_BIT, align 8
  br label %14

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i64 [ %12, %11 ], [ 0, %13 ]
  %16 = load i32, i32* @VMX_EPT_EXECUTABLE_MASK, align 4
  %17 = call i64 (...) @cpu_has_vmx_ept_execute_only()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  %21 = load i64, i64* @VMX_EPT_READABLE_MASK, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i64 [ 0, %19 ], [ %21, %20 ]
  %24 = load i32, i32* @VMX_EPT_RWX_MASK, align 4
  %25 = call i32 @kvm_mmu_set_mask_ptes(i64 %1, i64 %8, i64 %15, i64 0, i32 %16, i64 %23, i32 %24, i64 0)
  %26 = call i32 (...) @ept_set_mmio_spte_mask()
  %27 = call i32 (...) @kvm_enable_tdp()
  ret void
}

declare dso_local i32 @kvm_mmu_set_mask_ptes(i64, i64, i64, i64, i32, i64, i32, i64) #1

declare dso_local i64 @cpu_has_vmx_ept_execute_only(...) #1

declare dso_local i32 @ept_set_mmio_spte_mask(...) #1

declare dso_local i32 @kvm_enable_tdp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
