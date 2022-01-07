; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_rmap_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_rmap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { i32 }
%struct.kvm_rmap_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32*, i32)* @rmap_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmap_add(%struct.kvm_vcpu* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_mmu_page*, align 8
  %8 = alloca %struct.kvm_rmap_head*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @__pa(i32* %9)
  %11 = call %struct.kvm_mmu_page* @page_header(i32 %10)
  store %struct.kvm_mmu_page* %11, %struct.kvm_mmu_page** %7, align 8
  %12 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds i32, i32* %13, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @kvm_mmu_page_set_gfn(%struct.kvm_mmu_page* %12, i32* %19, i32 %20)
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %7, align 8
  %27 = call %struct.kvm_rmap_head* @gfn_to_rmap(i32 %24, i32 %25, %struct.kvm_mmu_page* %26)
  store %struct.kvm_rmap_head* %27, %struct.kvm_rmap_head** %8, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %8, align 8
  %31 = call i32 @pte_list_add(%struct.kvm_vcpu* %28, i32* %29, %struct.kvm_rmap_head* %30)
  ret i32 %31
}

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @kvm_mmu_page_set_gfn(%struct.kvm_mmu_page*, i32*, i32) #1

declare dso_local %struct.kvm_rmap_head* @gfn_to_rmap(i32, i32, %struct.kvm_mmu_page*) #1

declare dso_local i32 @pte_list_add(%struct.kvm_vcpu*, i32*, %struct.kvm_rmap_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
