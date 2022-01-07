; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_unmap_rmapp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_unmap_rmapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.kvm_memory_slot = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@KVMPPC_RMAP_PRESENT = common dso_local global i64 0, align 8
@KVMPPC_RMAP_INDEX = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_memory_slot*, i64)* @kvm_unmap_rmapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_unmap_rmapp(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  %19 = getelementptr inbounds i64, i64* %13, i64 %18
  store i64* %19, i64** %9, align 8
  br label %20

20:                                               ; preds = %63, %62, %3
  %21 = load i64*, i64** %9, align 8
  %22 = call i32 @lock_rmap(i64* %21)
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KVMPPC_RMAP_PRESENT, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i64*, i64** %9, align 8
  %30 = call i32 @unlock_rmap(i64* %29)
  br label %78

31:                                               ; preds = %20
  %32 = load i64*, i64** %9, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @KVMPPC_RMAP_INDEX, align 8
  %35 = and i64 %33, %34
  store i64 %35, i64* %7, align 8
  %36 = load %struct.kvm*, %struct.kvm** %4, align 8
  %37 = getelementptr inbounds %struct.kvm, %struct.kvm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = shl i64 %41, 4
  %43 = add i64 %40, %42
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @HPTE_V_HVLOCK, align 4
  %47 = call i32 @try_lock_hpte(i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %31
  %50 = load i64*, i64** %9, align 8
  %51 = call i32 @unlock_rmap(i64* %50)
  br label %52

52:                                               ; preds = %60, %49
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be64_to_cpu(i32 %55)
  %57 = load i32, i32* @HPTE_V_HVLOCK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 (...) @cpu_relax()
  br label %52

62:                                               ; preds = %52
  br label %20

63:                                               ; preds = %31
  %64 = load %struct.kvm*, %struct.kvm** %4, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @kvmppc_unmap_hpte(%struct.kvm* %64, i64 %65, %struct.kvm_memory_slot* %66, i64* %67, i64 %68)
  %70 = load i64*, i64** %9, align 8
  %71 = call i32 @unlock_rmap(i64* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be64_to_cpu(i32 %75)
  %77 = call i32 @__unlock_hpte(i32* %72, i32 %76)
  br label %20

78:                                               ; preds = %28
  ret i32 0
}

declare dso_local i32 @lock_rmap(i64*) #1

declare dso_local i32 @unlock_rmap(i64*) #1

declare dso_local i32 @try_lock_hpte(i32*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @kvmppc_unmap_hpte(%struct.kvm*, i64, %struct.kvm_memory_slot*, i64*, i64) #1

declare dso_local i32 @__unlock_hpte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
