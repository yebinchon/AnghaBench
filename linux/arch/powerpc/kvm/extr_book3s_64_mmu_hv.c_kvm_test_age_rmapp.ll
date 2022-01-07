; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_test_age_rmapp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_test_age_rmapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.revmap_entry* }
%struct.revmap_entry = type { i64 }
%struct.kvm_memory_slot = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@KVMPPC_RMAP_REFERENCED = common dso_local global i64 0, align 8
@KVMPPC_RMAP_PRESENT = common dso_local global i64 0, align 8
@KVMPPC_RMAP_INDEX = common dso_local global i64 0, align 8
@HPTE_R_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_memory_slot*, i64)* @kvm_test_age_rmapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_test_age_rmapp(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.revmap_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.kvm*, %struct.kvm** %5, align 8
  %16 = getelementptr inbounds %struct.kvm, %struct.kvm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.revmap_entry*, %struct.revmap_entry** %18, align 8
  store %struct.revmap_entry* %19, %struct.revmap_entry** %8, align 8
  store i32 1, i32* %13, align 4
  %20 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %26 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  store i64* %29, i64** %14, align 8
  %30 = load i64*, i64** %14, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KVMPPC_RMAP_REFERENCED, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %90

36:                                               ; preds = %3
  %37 = load i64*, i64** %14, align 8
  %38 = call i32 @lock_rmap(i64* %37)
  %39 = load i64*, i64** %14, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KVMPPC_RMAP_REFERENCED, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %86

45:                                               ; preds = %36
  %46 = load i64*, i64** %14, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @KVMPPC_RMAP_PRESENT, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %45
  %52 = load i64*, i64** %14, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @KVMPPC_RMAP_INDEX, align 8
  %55 = and i64 %53, %54
  store i64 %55, i64* %9, align 8
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %80, %51
  %57 = load %struct.kvm*, %struct.kvm** %5, align 8
  %58 = getelementptr inbounds %struct.kvm, %struct.kvm* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = shl i64 %62, 4
  %64 = add i64 %61, %63
  %65 = inttoptr i64 %64 to i64*
  store i64* %65, i64** %12, align 8
  %66 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %66, i64 %67
  %69 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %11, align 8
  %71 = load i64*, i64** %12, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @be64_to_cpu(i64 %73)
  %75 = load i32, i32* @HPTE_R_R, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %56
  br label %86

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %11, align 8
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %56, label %84

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %45
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %85, %78, %44
  %87 = load i64*, i64** %14, align 8
  %88 = call i32 @unlock_rmap(i64* %87)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %35
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @lock_rmap(i64*) #1

declare dso_local i32 @be64_to_cpu(i64) #1

declare dso_local i32 @unlock_rmap(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
