; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_validate_direct_spte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_validate_direct_spte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32*, i32)* @validate_direct_spte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_direct_spte(%struct.kvm_vcpu* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @is_shadow_present_pte(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_large_pte(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = call %struct.kvm_mmu_page* @page_header(i32 %21)
  store %struct.kvm_mmu_page* %22, %struct.kvm_mmu_page** %7, align 8
  %23 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %24 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %41

30:                                               ; preds = %17
  %31 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @drop_parent_pte(%struct.kvm_mmu_page* %31, i32* %32)
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %38 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kvm_flush_remote_tlbs_with_address(i32 %36, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %29, %30, %12, %3
  ret void
}

declare dso_local i64 @is_shadow_present_pte(i32) #1

declare dso_local i32 @is_large_pte(i32) #1

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @drop_parent_pte(%struct.kvm_mmu_page*, i32*) #1

declare dso_local i32 @kvm_flush_remote_tlbs_with_address(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
