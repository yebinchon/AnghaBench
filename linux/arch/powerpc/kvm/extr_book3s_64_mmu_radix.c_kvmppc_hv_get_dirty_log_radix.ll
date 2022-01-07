; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_hv_get_dirty_log_radix.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_hv_get_dirty_log_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_hv_get_dirty_log_radix(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i64* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %35, %3
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load %struct.kvm*, %struct.kvm** %4, align 8
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @kvm_radix_test_clear_dirty(%struct.kvm* %17, %struct.kvm_memory_slot* %18, i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @set_dirty_bits(i64* %26, i64 %27, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %25, %16
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %7, align 8
  br label %10

37:                                               ; preds = %10
  ret i64 0
}

declare dso_local i32 @kvm_radix_test_clear_dirty(%struct.kvm*, %struct.kvm_memory_slot*, i64) #1

declare dso_local i32 @set_dirty_bits(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
