; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_direct_pte_prefetch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_direct_pte_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32*)* @direct_pte_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @direct_pte_prefetch(%struct.kvm_vcpu* %0, i32* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @__pa(i32* %6)
  %8 = call %struct.kvm_mmu_page* @page_header(i32 %7)
  store %struct.kvm_mmu_page* %8, %struct.kvm_mmu_page** %5, align 8
  %9 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %10 = call i64 @sp_ad_disabled(%struct.kvm_mmu_page* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PT_PAGE_TABLE_LEVEL, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @__direct_pte_prefetch(%struct.kvm_vcpu* %22, %struct.kvm_mmu_page* %23, i32* %24)
  br label %26

26:                                               ; preds = %21, %20, %12
  ret void
}

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i64 @sp_ad_disabled(%struct.kvm_mmu_page*) #1

declare dso_local i32 @__direct_pte_prefetch(%struct.kvm_vcpu*, %struct.kvm_mmu_page*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
