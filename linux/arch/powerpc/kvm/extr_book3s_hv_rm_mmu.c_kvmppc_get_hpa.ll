; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_get_hpa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_get_hpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4
@H_PARAMETER = common dso_local global i32 0, align 4
@H_TOO_HARD = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32, i64*, %struct.kvm_memory_slot**)* @kvmppc_get_hpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_get_hpa(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i64* %3, %struct.kvm_memory_slot** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.kvm_memory_slot**, align 8
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca %struct.kvm_memory_slot*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store %struct.kvm_memory_slot** %4, %struct.kvm_memory_slot*** %11, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 1
  %23 = load %struct.kvm*, %struct.kvm** %22, align 8
  store %struct.kvm* %23, %struct.kvm** %12, align 8
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  store i64 %24, i64* %17, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  store i64 %27, i64* %14, align 8
  %28 = load %struct.kvm*, %struct.kvm** %12, align 8
  %29 = call i32 @kvm_memslots_raw(%struct.kvm* %28)
  %30 = load i64, i64* %14, align 8
  %31 = call %struct.kvm_memory_slot* @__gfn_to_memslot(i32 %29, i64 %30)
  store %struct.kvm_memory_slot* %31, %struct.kvm_memory_slot** %13, align 8
  %32 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %33 = icmp ne %struct.kvm_memory_slot* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %36 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %5
  %42 = load i32, i32* @H_PARAMETER, align 4
  store i32 %42, i32* %6, align 4
  br label %103

43:                                               ; preds = %34
  %44 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i64 @__gfn_to_hva_memslot(%struct.kvm_memory_slot* %44, i64 %45)
  store i64 %46, i64* %15, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i32* @__find_linux_pte(i32 %50, i64 %51, i32* null, i32* %18)
  store i32* %52, i32** %19, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %56, i32* %6, align 4
  br label %103

57:                                               ; preds = %43
  %58 = load i32*, i32** %19, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @kvmppc_read_update_linux_pte(i32* %58, i32 %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = call i32 @pte_present(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %65, i32* %6, align 4
  br label %103

66:                                               ; preds = %57
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %18, align 4
  %71 = zext i32 %70 to i64
  %72 = shl i64 1, %71
  store i64 %72, i64* %17, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %20, align 4
  %75 = call i64 @pte_pfn(i32 %74)
  %76 = load i64, i64* @PAGE_SHIFT, align 8
  %77 = shl i64 %75, %76
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* %17, align 8
  %80 = sub i64 %79, 1
  %81 = and i64 %78, %80
  %82 = load i64, i64* %16, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %16, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @PAGE_MASK, align 8
  %86 = xor i64 %85, -1
  %87 = and i64 %84, %86
  %88 = load i64, i64* %16, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %16, align 8
  %90 = load i64*, i64** %10, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %73
  %93 = load i64, i64* %16, align 8
  %94 = load i64*, i64** %10, align 8
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %73
  %96 = load %struct.kvm_memory_slot**, %struct.kvm_memory_slot*** %11, align 8
  %97 = icmp ne %struct.kvm_memory_slot** %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %100 = load %struct.kvm_memory_slot**, %struct.kvm_memory_slot*** %11, align 8
  store %struct.kvm_memory_slot* %99, %struct.kvm_memory_slot** %100, align 8
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* @H_SUCCESS, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %64, %55, %41
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.kvm_memory_slot* @__gfn_to_memslot(i32, i64) #1

declare dso_local i32 @kvm_memslots_raw(%struct.kvm*) #1

declare dso_local i64 @__gfn_to_hva_memslot(%struct.kvm_memory_slot*, i64) #1

declare dso_local i32* @__find_linux_pte(i32, i64, i32*, i32*) #1

declare dso_local i32 @kvmppc_read_update_linux_pte(i32*, i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
