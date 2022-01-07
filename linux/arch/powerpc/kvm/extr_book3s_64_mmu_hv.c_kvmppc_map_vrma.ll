; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_map_vrma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_map_vrma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_memory_slot = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@HPTE_V_1TB_SEG = common dso_local global i32 0, align 4
@VRMA_VSID = common dso_local global i32 0, align 4
@HPTE_V_BOLTED = common dso_local global i32 0, align 4
@HPTE_R_R = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@HPTE_R_M = common dso_local global i64 0, align 8
@PP_RWXX = common dso_local global i64 0, align 8
@H_EXACT = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"KVM: map_vrma at %lx failed, ret=%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_map_vrma(%struct.kvm_vcpu* %0, %struct.kvm_memory_slot* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.kvm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store i64 %2, i64* %6, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = load %struct.kvm*, %struct.kvm** %20, align 8
  store %struct.kvm* %21, %struct.kvm** %18, align 8
  %22 = load i64, i64* %6, align 8
  %23 = shl i64 1, %22
  store i64 %23, i64* %13, align 8
  %24 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = sub i64 %27, %28
  %30 = lshr i64 %26, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 40, %32
  %34 = shl i64 1, %33
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 40, %37
  %39 = shl i64 1, %38
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %36, %3
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.kvm*, %struct.kvm** %18, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i64 @kvmppc_hpt_mask(i32* %44)
  %46 = add i64 %45, 1
  %47 = icmp ugt i64 %41, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.kvm*, %struct.kvm** %18, align 8
  %50 = getelementptr inbounds %struct.kvm, %struct.kvm* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i64 @kvmppc_hpt_mask(i32* %51)
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32, i32* @HPTE_V_1TB_SEG, align 4
  %56 = load i32, i32* @VRMA_VSID, align 4
  %57 = shl i32 %56, 24
  %58 = or i32 %55, %57
  %59 = load i32, i32* @HPTE_V_BOLTED, align 4
  %60 = or i32 %58, %59
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @hpte0_pgsize_encoding(i64 %61)
  %63 = or i32 %60, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i64 @hpte1_pgsize_encoding(i64 %65)
  %67 = load i64, i64* @HPTE_R_R, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* @HPTE_R_C, align 8
  %70 = or i64 %68, %69
  %71 = load i64, i64* @HPTE_R_M, align 8
  %72 = or i64 %70, %71
  %73 = load i64, i64* @PP_RWXX, align 8
  %74 = or i64 %72, %73
  store i64 %74, i64* %15, align 8
  store i64 0, i64* %7, align 8
  br label %75

75:                                               ; preds = %120, %54
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %123

79:                                               ; preds = %75
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %6, align 8
  %82 = shl i64 %80, %81
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* @VRMA_VSID, align 4
  %85 = load i32, i32* @VRMA_VSID, align 4
  %86 = shl i32 %85, 25
  %87 = xor i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = xor i64 %83, %88
  %90 = load %struct.kvm*, %struct.kvm** %18, align 8
  %91 = getelementptr inbounds %struct.kvm, %struct.kvm* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i64 @kvmppc_hpt_mask(i32* %92)
  %94 = and i64 %89, %93
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = shl i64 %95, 3
  %97 = add i64 %96, 7
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %11, align 8
  %100 = lshr i64 %99, 16
  %101 = and i64 %100, -128
  %102 = or i64 %98, %101
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %11, align 8
  %105 = or i64 %103, %104
  store i64 %105, i64* %10, align 8
  %106 = load %struct.kvm*, %struct.kvm** %18, align 8
  %107 = load i32, i32* @H_EXACT, align 4
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @kvmppc_virtmode_do_h_enter(%struct.kvm* %106, i32 %107, i64 %108, i64 %109, i64 %110, i64* %16)
  store i64 %111, i64* %17, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* @H_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %79
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %17, align 8
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %116, i64 %117)
  br label %123

119:                                              ; preds = %79
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %7, align 8
  br label %75

123:                                              ; preds = %115, %75
  ret void
}

declare dso_local i64 @kvmppc_hpt_mask(i32*) #1

declare dso_local i32 @hpte0_pgsize_encoding(i64) #1

declare dso_local i64 @hpte1_pgsize_encoding(i64) #1

declare dso_local i64 @kvmppc_virtmode_do_h_enter(%struct.kvm*, i32, i64, i64, i64, i64*) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
