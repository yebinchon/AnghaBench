; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_hv_get_dirty_log_hpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_hv_get_dirty_log_hpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_hv_get_dirty_log_hpt(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i64* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = call i32 (...) @preempt_disable()
  %11 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %8, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %35, %3
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.kvm*, %struct.kvm** %4, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = call i32 @kvm_test_clear_dirty_npages(%struct.kvm* %22, i64* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @set_dirty_bits(i64* %28, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %8, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %15

38:                                               ; preds = %15
  %39 = call i32 (...) @preempt_enable()
  ret i64 0
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @kvm_test_clear_dirty_npages(%struct.kvm*, i64*) #1

declare dso_local i32 @set_dirty_bits(i64*, i64, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
