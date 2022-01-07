; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_rmap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_rmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_mmu_page = type { i32 }
%struct.kvm_rmap_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*)* @rmap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmap_remove(%struct.kvm* %0, i32* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kvm_mmu_page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_rmap_head*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @__pa(i32* %8)
  %10 = call %struct.kvm_mmu_page* @page_header(i32 %9)
  store %struct.kvm_mmu_page* %10, %struct.kvm_mmu_page** %5, align 8
  %11 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 0, %16
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  %19 = call i32 @kvm_mmu_page_get_gfn(%struct.kvm_mmu_page* %11, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.kvm*, %struct.kvm** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %23 = call %struct.kvm_rmap_head* @gfn_to_rmap(%struct.kvm* %20, i32 %21, %struct.kvm_mmu_page* %22)
  store %struct.kvm_rmap_head* %23, %struct.kvm_rmap_head** %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.kvm_rmap_head*, %struct.kvm_rmap_head** %7, align 8
  %26 = call i32 @__pte_list_remove(i32* %24, %struct.kvm_rmap_head* %25)
  ret void
}

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @kvm_mmu_page_get_gfn(%struct.kvm_mmu_page*, i32*) #1

declare dso_local %struct.kvm_rmap_head* @gfn_to_rmap(%struct.kvm*, i32, %struct.kvm_mmu_page*) #1

declare dso_local i32 @__pte_list_remove(i32*, %struct.kvm_rmap_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
