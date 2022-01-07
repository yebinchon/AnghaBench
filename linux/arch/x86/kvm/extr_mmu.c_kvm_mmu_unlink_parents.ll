; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_unlink_parents.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_unlink_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_mmu_page = type { i32 }
%struct.rmap_iterator = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_mmu_page*)* @kvm_mmu_unlink_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_mmu_unlink_parents(%struct.kvm* %0, %struct.kvm_mmu_page* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rmap_iterator, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %4, align 8
  br label %7

7:                                                ; preds = %12, %2
  %8 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %8, i32 0, i32 0
  %10 = call i32* @rmap_get_first(i32* %9, %struct.rmap_iterator* %6)
  store i32* %10, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @drop_parent_pte(%struct.kvm_mmu_page* %13, i32* %14)
  br label %7

16:                                               ; preds = %7
  ret void
}

declare dso_local i32* @rmap_get_first(i32*, %struct.rmap_iterator*) #1

declare dso_local i32 @drop_parent_pte(%struct.kvm_mmu_page*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
