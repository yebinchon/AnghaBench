; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_h_clear_ref.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_h_clear_ref.c"
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
@HPTE_R_R = common dso_local global i32 0, align 4
@HPTE_R_C = common dso_local global i32 0, align 4
@KVMPPC_RMAP_REFERENCED = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_h_clear_ref(%struct.kvm_vcpu* %0, i64 %1, i64 %2) #0 {
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
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 1
  %18 = load %struct.kvm*, %struct.kvm** %17, align 8
  store %struct.kvm* %18, %struct.kvm** %8, align 8
  %19 = load i64, i64* @H_NOT_FOUND, align 8
  store i64 %19, i64* %15, align 8
  %20 = load %struct.kvm*, %struct.kvm** %8, align 8
  %21 = call i64 @kvm_is_radix(%struct.kvm* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @H_FUNCTION, align 8
  store i64 %24, i64* %4, align 8
  br label %156

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.kvm*, %struct.kvm** %8, align 8
  %28 = getelementptr inbounds %struct.kvm, %struct.kvm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i64 @kvmppc_hpt_npte(%struct.TYPE_8__* %29)
  %31 = icmp uge i64 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @H_PARAMETER, align 8
  store i64 %33, i64* %4, align 8
  br label %156

34:                                               ; preds = %25
  %35 = load %struct.kvm*, %struct.kvm** %8, align 8
  %36 = getelementptr inbounds %struct.kvm, %struct.kvm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call %struct.revmap_entry* @real_vmalloc_addr(i32* %41)
  store %struct.revmap_entry* %42, %struct.revmap_entry** %13, align 8
  %43 = load %struct.kvm*, %struct.kvm** %8, align 8
  %44 = getelementptr inbounds %struct.kvm, %struct.kvm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = shl i64 %48, 4
  %50 = add i64 %47, %49
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %9, align 8
  br label %52

52:                                               ; preds = %58, %34
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %55 = call i32 @try_lock_hpte(i32* %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 (...) @cpu_relax()
  br label %52

60:                                               ; preds = %52
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @be64_to_cpu(i32 %63)
  store i64 %64, i64* %10, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @be64_to_cpu(i32 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @HPTE_V_VALID, align 8
  %71 = load i64, i64* @HPTE_V_ABSENT, align 8
  %72 = or i64 %70, %71
  %73 = and i64 %69, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %60
  br label %148

76:                                               ; preds = %60
  %77 = load %struct.revmap_entry*, %struct.revmap_entry** %13, align 8
  %78 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %12, align 8
  %80 = load %struct.revmap_entry*, %struct.revmap_entry** %13, align 8
  %81 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @HPTE_R_R, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %82, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %76
  %88 = load i32, i32* @HPTE_R_R, align 4
  %89 = xor i32 %88, -1
  %90 = sext i32 %89 to i64
  %91 = load %struct.revmap_entry*, %struct.revmap_entry** %13, align 8
  %92 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = and i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.kvm*, %struct.kvm** %8, align 8
  %96 = load %struct.revmap_entry*, %struct.revmap_entry** %13, align 8
  %97 = call i32 @note_hpte_modification(%struct.kvm* %95, %struct.revmap_entry* %96)
  br label %98

98:                                               ; preds = %87, %76
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @HPTE_V_VALID, align 8
  %101 = and i64 %99, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %98
  %104 = load i64, i64* %11, align 8
  %105 = load i32, i32* @HPTE_R_R, align 4
  %106 = load i32, i32* @HPTE_R_C, align 4
  %107 = or i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = and i64 %104, %108
  %110 = load i64, i64* %12, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i32, i32* @HPTE_R_R, align 4
  %114 = sext i32 %113 to i64
  %115 = and i64 %112, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %103
  %118 = load %struct.kvm*, %struct.kvm** %8, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @kvmppc_clear_ref_hpte(%struct.kvm* %118, i32* %119, i64 %120)
  %122 = load %struct.kvm*, %struct.kvm** %8, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i64* @revmap_for_hpte(%struct.kvm* %122, i64 %123, i64 %124, i32* null, i32* null)
  store i64* %125, i64** %14, align 8
  %126 = load i64*, i64** %14, align 8
  %127 = icmp ne i64* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %117
  %129 = load i64*, i64** %14, align 8
  %130 = call i32 @lock_rmap(i64* %129)
  %131 = load i64, i64* @KVMPPC_RMAP_REFERENCED, align 8
  %132 = load i64*, i64** %14, align 8
  %133 = load i64, i64* %132, align 8
  %134 = or i64 %133, %131
  store i64 %134, i64* %132, align 8
  %135 = load i64*, i64** %14, align 8
  %136 = call i32 @unlock_rmap(i64* %135)
  br label %137

137:                                              ; preds = %128, %117
  br label %138

138:                                              ; preds = %137, %103
  br label %139

139:                                              ; preds = %138, %98
  %140 = load i64, i64* %12, align 8
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %142 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 4
  store i64 %140, i64* %146, align 8
  %147 = load i64, i64* @H_SUCCESS, align 8
  store i64 %147, i64* %15, align 8
  br label %148

148:                                              ; preds = %139, %75
  %149 = load i32*, i32** %9, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %152 = xor i64 %151, -1
  %153 = and i64 %150, %152
  %154 = call i32 @unlock_hpte(i32* %149, i64 %153)
  %155 = load i64, i64* %15, align 8
  store i64 %155, i64* %4, align 8
  br label %156

156:                                              ; preds = %148, %32, %23
  %157 = load i64, i64* %4, align 8
  ret i64 %157
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i64 @kvmppc_hpt_npte(%struct.TYPE_8__*) #1

declare dso_local %struct.revmap_entry* @real_vmalloc_addr(i32*) #1

declare dso_local i32 @try_lock_hpte(i32*, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @note_hpte_modification(%struct.kvm*, %struct.revmap_entry*) #1

declare dso_local i32 @kvmppc_clear_ref_hpte(%struct.kvm*, i32*, i64) #1

declare dso_local i64* @revmap_for_hpte(%struct.kvm*, i64, i64, i32*, i32*) #1

declare dso_local i32 @lock_rmap(i64*) #1

declare dso_local i32 @unlock_rmap(i64*) #1

declare dso_local i32 @unlock_hpte(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
