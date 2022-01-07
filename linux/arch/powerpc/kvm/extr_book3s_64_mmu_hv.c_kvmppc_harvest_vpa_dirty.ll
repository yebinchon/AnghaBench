; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_harvest_vpa_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_harvest_vpa_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vpa = type { i32, i64, i32 }
%struct.kvm_memory_slot = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_harvest_vpa_dirty(%struct.kvmppc_vpa* %0, %struct.kvm_memory_slot* %1, i64* %2) #0 {
  %4 = alloca %struct.kvmppc_vpa*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.kvmppc_vpa* %0, %struct.kvmppc_vpa** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %9 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %14 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %3
  br label %53

18:                                               ; preds = %12
  %19 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %18
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %33, %36
  %38 = icmp uge i64 %30, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29, %18
  br label %53

40:                                               ; preds = %29
  %41 = load %struct.kvmppc_vpa*, %struct.kvmppc_vpa** %4, align 8
  %42 = getelementptr inbounds %struct.kvmppc_vpa, %struct.kvmppc_vpa* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  %51 = load i64*, i64** %6, align 8
  %52 = call i32 @__set_bit_le(i64 %50, i64* %51)
  br label %53

53:                                               ; preds = %17, %39, %45, %40
  ret void
}

declare dso_local i32 @__set_bit_le(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
