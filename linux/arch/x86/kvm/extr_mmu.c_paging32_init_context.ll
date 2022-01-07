; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_paging32_init_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_paging32_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PT32_ROOT_LEVEL = common dso_local global i32 0, align 4
@paging32_page_fault = common dso_local global i32 0, align 4
@paging32_gva_to_gpa = common dso_local global i32 0, align 4
@paging32_sync_page = common dso_local global i32 0, align 4
@paging32_invlpg = common dso_local global i32 0, align 4
@paging32_update_pte = common dso_local global i32 0, align 4
@PT32E_ROOT_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu*)* @paging32_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paging32_init_context(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %4, align 8
  %5 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %6 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @PT32_ROOT_LEVEL, align 4
  %8 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %8, i32 0, i32 8
  store i32 %7, i32* %9, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %12 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %10, %struct.kvm_mmu* %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %15 = call i32 @update_permission_bitmask(%struct.kvm_vcpu* %13, %struct.kvm_mmu* %14, i32 0)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %18 = call i32 @update_pkru_bitmask(%struct.kvm_vcpu* %16, %struct.kvm_mmu* %17, i32 0)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %21 = call i32 @update_last_nonleaf_level(%struct.kvm_vcpu* %19, %struct.kvm_mmu* %20)
  %22 = load i32, i32* @paging32_page_fault, align 4
  %23 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @paging32_gva_to_gpa, align 4
  %26 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @paging32_sync_page, align 4
  %29 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @paging32_invlpg, align 4
  %32 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @paging32_update_pte, align 4
  %35 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @PT32E_ROOT_LEVEL, align 4
  %38 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %39 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  ret void
}

declare dso_local i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i32 @update_permission_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_pkru_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_last_nonleaf_level(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
