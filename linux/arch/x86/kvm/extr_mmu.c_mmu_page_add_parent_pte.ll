; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_page_add_parent_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mmu_page_add_parent_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu_page*, i32*)* @mmu_page_add_parent_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_page_add_parent_pte(%struct.kvm_vcpu* %0, %struct.kvm_mmu_page* %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_mmu_page*, align 8
  %6 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %16

10:                                               ; preds = %3
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %13, i32 0, i32 0
  %15 = call i32 @pte_list_add(%struct.kvm_vcpu* %11, i32* %12, i32* %14)
  br label %16

16:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @pte_list_add(%struct.kvm_vcpu*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
