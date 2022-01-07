; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_nonpaging_init_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_nonpaging_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu = type { i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@nonpaging_page_fault = common dso_local global i32 0, align 4
@nonpaging_gva_to_gpa = common dso_local global i32 0, align 4
@nonpaging_sync_page = common dso_local global i32 0, align 4
@nonpaging_invlpg = common dso_local global i32 0, align 4
@nonpaging_update_pte = common dso_local global i32 0, align 4
@PT32E_ROOT_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu*)* @nonpaging_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nonpaging_init_context(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %4, align 8
  %5 = load i32, i32* @nonpaging_page_fault, align 4
  %6 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %6, i32 0, i32 8
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @nonpaging_gva_to_gpa, align 4
  %9 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @nonpaging_sync_page, align 4
  %12 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @nonpaging_invlpg, align 4
  %15 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @nonpaging_update_pte, align 4
  %18 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @PT32E_ROOT_LEVEL, align 4
  %23 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
