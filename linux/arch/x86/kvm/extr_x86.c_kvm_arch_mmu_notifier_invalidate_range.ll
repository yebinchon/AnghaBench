; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_mmu_notifier_invalidate_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_mmu_notifier_invalidate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@APIC_DEFAULT_PHYS_BASE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KVM_REQ_APIC_PAGE_RELOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_mmu_notifier_invalidate_range(%struct.kvm* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.kvm*, %struct.kvm** %5, align 8
  %11 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %12 = load i32, i32* @PAGE_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = call i64 @gfn_to_hva(%struct.kvm* %10, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.kvm*, %struct.kvm** %5, align 8
  %24 = load i32, i32* @KVM_REQ_APIC_PAGE_RELOAD, align 4
  %25 = call i32 @kvm_make_all_cpus_request(%struct.kvm* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %18, %4
  ret i32 0
}

declare dso_local i64 @gfn_to_hva(%struct.kvm*, i32) #1

declare dso_local i32 @kvm_make_all_cpus_request(%struct.kvm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
