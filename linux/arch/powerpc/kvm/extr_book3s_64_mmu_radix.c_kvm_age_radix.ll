; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvm_age_radix.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvm_age_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_memory_slot = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@_PAGE_ACCESSED = common dso_local global i32 0, align 4
@PTE_RPN_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_age_radix(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = shl i64 %13, %14
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.kvm*, %struct.kvm** %4, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32* @__find_linux_pte(i32 %19, i64 %20, i32* null, i32* %9)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pte_present(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @pte_young(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = load %struct.kvm*, %struct.kvm** %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @_PAGE_ACCESSED, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @kvmppc_radix_update_pte(%struct.kvm* %35, i32* %36, i32 %37, i32 0, i64 %38, i32 %39)
  store i64 %40, i64* %11, align 8
  %41 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = getelementptr inbounds i64, i64* %44, i64 %49
  store i64* %50, i64** %12, align 8
  %51 = load %struct.kvm*, %struct.kvm** %4, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i32, i32* @_PAGE_ACCESSED, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @PTE_RPN_MASK, align 8
  %56 = and i64 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = shl i64 1, %58
  %60 = call i32 @kvmhv_update_nest_rmap_rc_list(%struct.kvm* %51, i64* %52, i32 %53, i32 0, i64 %56, i64 %59)
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %34, %29, %24, %3
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i32* @__find_linux_pte(i32, i64, i32*, i32*) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i64 @pte_young(i32) #1

declare dso_local i64 @kvmppc_radix_update_pte(%struct.kvm*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @kvmhv_update_nest_rmap_rc_list(%struct.kvm*, i64*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
