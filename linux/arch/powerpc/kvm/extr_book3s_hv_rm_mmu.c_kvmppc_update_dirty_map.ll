; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_update_dirty_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_update_dirty_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i32, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_update_dirty_map(%struct.kvm_memory_slot* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %3
  br label %34

16:                                               ; preds = %10
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = add i64 %17, %18
  %20 = sub i64 %19, 1
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = udiv i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @set_dirty_bits_atomic(i32 %30, i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @set_dirty_bits_atomic(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
