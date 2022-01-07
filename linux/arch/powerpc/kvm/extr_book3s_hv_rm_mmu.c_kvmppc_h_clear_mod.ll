; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_h_clear_mod.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_h_clear_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_7__, %struct.kvm* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32* }
%struct.revmap_entry = type { i64 }

@H_NOT_FOUND = common dso_local global i64 0, align 8
@H_FUNCTION = common dso_local global i64 0, align 8
@H_PARAMETER = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@HPTE_V_ABSENT = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@HPTE_R_R = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_h_clear_mod(%struct.kvm_vcpu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.revmap_entry*, align 8
  %14 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = load %struct.kvm*, %struct.kvm** %16, align 8
  store %struct.kvm* %17, %struct.kvm** %8, align 8
  %18 = load i64, i64* @H_NOT_FOUND, align 8
  store i64 %18, i64* %14, align 8
  %19 = load %struct.kvm*, %struct.kvm** %8, align 8
  %20 = call i64 @kvm_is_radix(%struct.kvm* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @H_FUNCTION, align 8
  store i64 %23, i64* %4, align 8
  br label %155

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.kvm*, %struct.kvm** %8, align 8
  %27 = getelementptr inbounds %struct.kvm, %struct.kvm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i64 @kvmppc_hpt_npte(%struct.TYPE_8__* %28)
  %30 = icmp uge i64 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @H_PARAMETER, align 8
  store i64 %32, i64* %4, align 8
  br label %155

33:                                               ; preds = %24
  %34 = load %struct.kvm*, %struct.kvm** %8, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call %struct.revmap_entry* @real_vmalloc_addr(i32* %40)
  store %struct.revmap_entry* %41, %struct.revmap_entry** %13, align 8
  %42 = load %struct.kvm*, %struct.kvm** %8, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = shl i64 %47, 4
  %49 = add i64 %46, %48
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %9, align 8
  br label %51

51:                                               ; preds = %57, %33
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %54 = call i32 @try_lock_hpte(i32* %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 (...) @cpu_relax()
  br label %51

59:                                               ; preds = %51
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @be64_to_cpu(i32 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @be64_to_cpu(i32 %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @HPTE_V_VALID, align 8
  %70 = load i64, i64* @HPTE_V_ABSENT, align 8
  %71 = or i64 %69, %70
  %72 = and i64 %68, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %59
  br label %147

75:                                               ; preds = %59
  %76 = load %struct.revmap_entry*, %struct.revmap_entry** %13, align 8
  %77 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* @HPTE_R_C, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load i64, i64* @HPTE_R_C, align 8
  %85 = xor i64 %84, -1
  %86 = load %struct.revmap_entry*, %struct.revmap_entry** %13, align 8
  %87 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = and i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load %struct.kvm*, %struct.kvm** %8, align 8
  %91 = load %struct.revmap_entry*, %struct.revmap_entry** %13, align 8
  %92 = call i32 @note_hpte_modification(%struct.kvm* %90, %struct.revmap_entry* %91)
  br label %93

93:                                               ; preds = %83, %75
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @HPTE_V_VALID, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %93
  %99 = load i64, i64* @HPTE_V_ABSENT, align 8
  %100 = call i32 @cpu_to_be64(i64 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.kvm*, %struct.kvm** %8, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @kvmppc_invalidate_hpte(%struct.kvm* %105, i32* %106, i64 %107)
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @be64_to_cpu(i32 %111)
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* @HPTE_R_R, align 8
  %115 = load i64, i64* @HPTE_R_C, align 8
  %116 = or i64 %114, %115
  %117 = and i64 %113, %116
  %118 = load i64, i64* %12, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* @HPTE_R_C, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %98
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* @HPTE_R_C, align 8
  %127 = xor i64 %126, -1
  %128 = and i64 %125, %127
  %129 = call i32 @cpu_to_be64(i64 %128)
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %129, i32* %131, align 4
  %132 = call i32 (...) @eieio()
  %133 = load %struct.kvm*, %struct.kvm** %8, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @kvmppc_set_dirty_from_hpte(%struct.kvm* %133, i64 %134, i64 %135)
  br label %137

137:                                              ; preds = %124, %98
  br label %138

138:                                              ; preds = %137, %93
  %139 = load i64, i64* %12, align 8
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %141 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 4
  store i64 %139, i64* %145, align 8
  %146 = load i64, i64* @H_SUCCESS, align 8
  store i64 %146, i64* %14, align 8
  br label %147

147:                                              ; preds = %138, %74
  %148 = load i32*, i32** %9, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %151 = xor i64 %150, -1
  %152 = and i64 %149, %151
  %153 = call i32 @unlock_hpte(i32* %148, i64 %152)
  %154 = load i64, i64* %14, align 8
  store i64 %154, i64* %4, align 8
  br label %155

155:                                              ; preds = %147, %31, %22
  %156 = load i64, i64* %4, align 8
  ret i64 %156
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i64 @kvmppc_hpt_npte(%struct.TYPE_8__*) #1

declare dso_local %struct.revmap_entry* @real_vmalloc_addr(i32*) #1

declare dso_local i32 @try_lock_hpte(i32*, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @note_hpte_modification(%struct.kvm*, %struct.revmap_entry*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @kvmppc_invalidate_hpte(%struct.kvm*, i32*, i64) #1

declare dso_local i32 @eieio(...) #1

declare dso_local i32 @kvmppc_set_dirty_from_hpte(%struct.kvm*, i64, i64) #1

declare dso_local i32 @unlock_hpte(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
