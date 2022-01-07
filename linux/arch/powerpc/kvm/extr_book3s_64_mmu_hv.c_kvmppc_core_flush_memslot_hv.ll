; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_core_flush_memslot_hv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_core_flush_memslot_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@KVMPPC_RMAP_PRESENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_core_flush_memslot_hv(%struct.kvm* %0, %struct.kvm_memory_slot* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %4, align 8
  %8 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %7, align 8
  %15 = load %struct.kvm*, %struct.kvm** %3, align 8
  %16 = call i64 @kvm_is_radix(%struct.kvm* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.kvm*, %struct.kvm** %3, align 8
  %20 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %21 = call i32 @kvmppc_radix_flush_memslot(%struct.kvm* %19, %struct.kvm_memory_slot* %20)
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %43, %22
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KVMPPC_RMAP_PRESENT, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.kvm*, %struct.kvm** %3, align 8
  %37 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @kvm_unmap_rmapp(%struct.kvm* %36, %struct.kvm_memory_slot* %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %7, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %26

48:                                               ; preds = %18, %26
  ret void
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_radix_flush_memslot(%struct.kvm*, %struct.kvm_memory_slot*) #1

declare dso_local i32 @kvm_unmap_rmapp(%struct.kvm*, %struct.kvm_memory_slot*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
