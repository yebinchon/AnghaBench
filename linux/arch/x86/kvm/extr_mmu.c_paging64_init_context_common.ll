; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_paging64_init_context_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_paging64_init_context_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@paging64_page_fault = common dso_local global i32 0, align 4
@paging64_gva_to_gpa = common dso_local global i32 0, align 4
@paging64_sync_page = common dso_local global i32 0, align 4
@paging64_invlpg = common dso_local global i32 0, align 4
@paging64_update_pte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu*, i32)* @paging64_init_context_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paging64_init_context_common(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_mmu*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call i32 @is_nx(%struct.kvm_vcpu* %7)
  %9 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %16 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %14, %struct.kvm_mmu* %15)
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %19 = call i32 @update_permission_bitmask(%struct.kvm_vcpu* %17, %struct.kvm_mmu* %18, i32 0)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %22 = call i32 @update_pkru_bitmask(%struct.kvm_vcpu* %20, %struct.kvm_mmu* %21, i32 0)
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %25 = call i32 @update_last_nonleaf_level(%struct.kvm_vcpu* %23, %struct.kvm_mmu* %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = call i32 @is_pae(%struct.kvm_vcpu* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @MMU_WARN_ON(i32 %30)
  %32 = load i32, i32* @paging64_page_fault, align 4
  %33 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @paging64_gva_to_gpa, align 4
  %36 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @paging64_sync_page, align 4
  %39 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @paging64_invlpg, align 4
  %42 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @paging64_update_pte, align 4
  %45 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %46 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %50, i32 0, i32 2
  store i32 0, i32* %51, align 4
  ret void
}

declare dso_local i32 @is_nx(%struct.kvm_vcpu*) #1

declare dso_local i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i32 @update_permission_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_pkru_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_last_nonleaf_level(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i32 @MMU_WARN_ON(i32) #1

declare dso_local i32 @is_pae(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
