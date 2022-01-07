; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu_audit.c___mmu_spte_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu_audit.c___mmu_spte_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { i32* }

@PT64_ENT_PER_PAGE = common dso_local global i32 0, align 4
@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu_page*, i32 (%struct.kvm_vcpu*, i32*, i32)*, i32)* @__mmu_spte_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mmu_spte_walk(%struct.kvm_vcpu* %0, %struct.kvm_mmu_page* %1, i32 (%struct.kvm_vcpu*, i32*, i32)* %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_mmu_page*, align 8
  %7 = alloca i32 (%struct.kvm_vcpu*, i32*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %6, align 8
  store i32 (%struct.kvm_vcpu*, i32*, i32)* %2, i32 (%struct.kvm_vcpu*, i32*, i32)** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %59, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @PT64_ENT_PER_PAGE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %12
  %17 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32 (%struct.kvm_vcpu*, i32*, i32)*, i32 (%struct.kvm_vcpu*, i32*, i32)** %7, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %8, align 4
  %27 = call i32 %20(%struct.kvm_vcpu* %21, i32* %25, i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @is_shadow_present_pte(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %16
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @is_last_spte(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %35
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = call %struct.kvm_mmu_page* @page_header(i32 %51)
  store %struct.kvm_mmu_page* %52, %struct.kvm_mmu_page** %11, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %54 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %11, align 8
  %55 = load i32 (%struct.kvm_vcpu*, i32*, i32)*, i32 (%struct.kvm_vcpu*, i32*, i32)** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 1
  call void @__mmu_spte_walk(%struct.kvm_vcpu* %53, %struct.kvm_mmu_page* %54, i32 (%struct.kvm_vcpu*, i32*, i32)* %55, i32 %57)
  br label %58

58:                                               ; preds = %44, %35, %16
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %12

62:                                               ; preds = %12
  ret void
}

declare dso_local i64 @is_shadow_present_pte(i32) #1

declare dso_local i32 @is_last_spte(i32, i32) #1

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
