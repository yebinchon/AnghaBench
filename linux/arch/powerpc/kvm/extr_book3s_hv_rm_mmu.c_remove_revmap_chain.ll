; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_remove_revmap_chain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_remove_revmap_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.revmap_entry = type { i64, i64, i64 }
%struct.kvm_memory_slot = type { i32 }

@HPTE_R_R = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@KVMPPC_RMAP_INDEX = common dso_local global i64 0, align 8
@KVMPPC_RMAP_PRESENT = common dso_local global i64 0, align 8
@KVMPPC_RMAP_RC_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i64, %struct.revmap_entry*, i64, i64)* @remove_revmap_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_revmap_chain(%struct.kvm* %0, i64 %1, %struct.revmap_entry* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.revmap_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.revmap_entry*, align 8
  %12 = alloca %struct.revmap_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.kvm_memory_slot*, align 8
  %18 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.revmap_entry* %2, %struct.revmap_entry** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @HPTE_R_R, align 8
  %21 = load i64, i64* @HPTE_R_C, align 8
  %22 = or i64 %20, %21
  %23 = and i64 %19, %22
  store i64 %23, i64* %16, align 8
  %24 = load i64, i64* %16, align 8
  %25 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %26 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %24
  store i64 %28, i64* %26, align 8
  store i64 %28, i64* %13, align 8
  %29 = load %struct.kvm*, %struct.kvm** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i64* @revmap_for_hpte(%struct.kvm* %29, i64 %30, i64 %31, %struct.kvm_memory_slot** %17, i64* %18)
  store i64* %32, i64** %15, align 8
  %33 = load i64*, i64** %15, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %5
  br label %122

36:                                               ; preds = %5
  %37 = load i64*, i64** %15, align 8
  %38 = call i32 @lock_rmap(i64* %37)
  %39 = load i64*, i64** %15, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KVMPPC_RMAP_INDEX, align 8
  %42 = and i64 %40, %41
  store i64 %42, i64* %14, align 8
  %43 = load %struct.kvm*, %struct.kvm** %6, align 8
  %44 = getelementptr inbounds %struct.kvm, %struct.kvm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %49 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = call %struct.revmap_entry* @real_vmalloc_addr(i32* %51)
  store %struct.revmap_entry* %52, %struct.revmap_entry** %11, align 8
  %53 = load %struct.kvm*, %struct.kvm** %6, align 8
  %54 = getelementptr inbounds %struct.kvm, %struct.kvm* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %59 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = call %struct.revmap_entry* @real_vmalloc_addr(i32* %61)
  store %struct.revmap_entry* %62, %struct.revmap_entry** %12, align 8
  %63 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %64 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.revmap_entry*, %struct.revmap_entry** %11, align 8
  %67 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %69 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.revmap_entry*, %struct.revmap_entry** %12, align 8
  %72 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %36
  %77 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %78 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i64, i64* @KVMPPC_RMAP_PRESENT, align 8
  %85 = load i64, i64* @KVMPPC_RMAP_INDEX, align 8
  %86 = or i64 %84, %85
  %87 = xor i64 %86, -1
  %88 = load i64*, i64** %15, align 8
  %89 = load i64, i64* %88, align 8
  %90 = and i64 %89, %87
  store i64 %90, i64* %88, align 8
  br label %100

91:                                               ; preds = %76
  %92 = load i64*, i64** %15, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @KVMPPC_RMAP_INDEX, align 8
  %95 = xor i64 %94, -1
  %96 = and i64 %93, %95
  %97 = load i64, i64* %14, align 8
  %98 = or i64 %96, %97
  %99 = load i64*, i64** %15, align 8
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %91, %83
  br label %101

101:                                              ; preds = %100, %36
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* @KVMPPC_RMAP_RC_SHIFT, align 8
  %104 = shl i64 %102, %103
  %105 = load i64*, i64** %15, align 8
  %106 = load i64, i64* %105, align 8
  %107 = or i64 %106, %104
  store i64 %107, i64* %105, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* @HPTE_R_C, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %17, align 8
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @kvmppc_actual_pgsz(i64 %115, i64 %116)
  %118 = call i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot* %113, i64 %114, i32 %117)
  br label %119

119:                                              ; preds = %112, %101
  %120 = load i64*, i64** %15, align 8
  %121 = call i32 @unlock_rmap(i64* %120)
  br label %122

122:                                              ; preds = %119, %35
  ret void
}

declare dso_local i64* @revmap_for_hpte(%struct.kvm*, i64, i64, %struct.kvm_memory_slot**, i64*) #1

declare dso_local i32 @lock_rmap(i64*) #1

declare dso_local %struct.revmap_entry* @real_vmalloc_addr(i32*) #1

declare dso_local i32 @kvmppc_update_dirty_map(%struct.kvm_memory_slot*, i64, i32) #1

declare dso_local i32 @kvmppc_actual_pgsz(i64, i64) #1

declare dso_local i32 @unlock_rmap(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
