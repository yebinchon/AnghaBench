; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_mmio_cache_search.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_mmio_cache_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmio_hpte_cache_entry = type { i64, i32, i32, i64 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mmio_hpte_cache_entry* }

@MMIO_HPTE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmio_hpte_cache_entry* (%struct.kvm_vcpu*, i64, i64, i64)* @mmio_cache_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmio_hpte_cache_entry* @mmio_cache_search(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mmio_hpte_cache_entry*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mmio_hpte_cache_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.mmio_hpte_cache_entry* null, %struct.mmio_hpte_cache_entry** %10, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %56, %4
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @MMIO_HPTE_CACHE_SIZE, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %13
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %22, i64 %24
  store %struct.mmio_hpte_cache_entry* %25, %struct.mmio_hpte_cache_entry** %10, align 8
  %26 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %10, align 8
  %27 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %17
  %32 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %10, align 8
  %33 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %10, align 8
  %36 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = lshr i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = lshr i64 %41, %43
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %31
  %47 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %10, align 8
  %48 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %10, align 8
  store %struct.mmio_hpte_cache_entry* %53, %struct.mmio_hpte_cache_entry** %5, align 8
  br label %60

54:                                               ; preds = %46, %31
  br label %55

55:                                               ; preds = %54, %17
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %13

59:                                               ; preds = %13
  store %struct.mmio_hpte_cache_entry* null, %struct.mmio_hpte_cache_entry** %5, align 8
  br label %60

60:                                               ; preds = %59, %52
  %61 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %5, align 8
  ret %struct.mmio_hpte_cache_entry* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
