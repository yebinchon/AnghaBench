; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_age_rmapp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_age_rmapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.revmap_entry* }
%struct.revmap_entry = type { i64, i32 }
%struct.kvm_memory_slot = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@KVMPPC_RMAP_REFERENCED = common dso_local global i64 0, align 8
@KVMPPC_RMAP_PRESENT = common dso_local global i64 0, align 8
@KVMPPC_RMAP_INDEX = common dso_local global i64 0, align 8
@HPTE_R_R = common dso_local global i32 0, align 4
@HPTE_V_HVLOCK = common dso_local global i32 0, align 4
@HPTE_V_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_memory_slot*, i64)* @kvm_age_rmapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_age_rmapp(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.revmap_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
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
  store i32 0, i32* %13, align 4
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
  br label %30

30:                                               ; preds = %100, %3
  %31 = load i64*, i64** %14, align 8
  %32 = call i32 @lock_rmap(i64* %31)
  %33 = load i64*, i64** %14, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @KVMPPC_RMAP_REFERENCED, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load i64, i64* @KVMPPC_RMAP_REFERENCED, align 8
  %40 = xor i64 %39, -1
  %41 = load i64*, i64** %14, align 8
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %42, %40
  store i64 %43, i64* %41, align 8
  store i32 1, i32* %13, align 4
  br label %44

44:                                               ; preds = %38, %30
  %45 = load i64*, i64** %14, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KVMPPC_RMAP_PRESENT, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i64*, i64** %14, align 8
  %52 = call i32 @unlock_rmap(i64* %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %4, align 4
  br label %159

54:                                               ; preds = %44
  %55 = load i64*, i64** %14, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @KVMPPC_RMAP_INDEX, align 8
  %58 = and i64 %56, %57
  store i64 %58, i64* %9, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %151, %54
  %60 = load %struct.kvm*, %struct.kvm** %5, align 8
  %61 = getelementptr inbounds %struct.kvm, %struct.kvm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = shl i64 %65, 4
  %67 = add i64 %64, %66
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %12, align 8
  %69 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %69, i64 %70
  %72 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be64_to_cpu(i32 %76)
  %78 = load i32, i32* @HPTE_R_R, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %59
  br label %151

82:                                               ; preds = %59
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* @HPTE_V_HVLOCK, align 4
  %85 = call i32 @try_lock_hpte(i32* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %82
  %88 = load i64*, i64** %14, align 8
  %89 = call i32 @unlock_rmap(i64* %88)
  br label %90

90:                                               ; preds = %98, %87
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be64_to_cpu(i32 %93)
  %95 = load i32, i32* @HPTE_V_HVLOCK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = call i32 (...) @cpu_relax()
  br label %90

100:                                              ; preds = %90
  br label %30

101:                                              ; preds = %82
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be64_to_cpu(i32 %104)
  %106 = load i32, i32* @HPTE_V_VALID, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %144

109:                                              ; preds = %101
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @be64_to_cpu(i32 %112)
  %114 = load i32, i32* @HPTE_R_R, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %109
  %118 = load %struct.kvm*, %struct.kvm** %5, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @kvmppc_clear_ref_hpte(%struct.kvm* %118, i32* %119, i64 %120)
  %122 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %122, i64 %123
  %125 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @HPTE_R_R, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %143, label %130

130:                                              ; preds = %117
  %131 = load i32, i32* @HPTE_R_R, align 4
  %132 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %132, i64 %133
  %135 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 8
  %138 = load %struct.kvm*, %struct.kvm** %5, align 8
  %139 = load %struct.revmap_entry*, %struct.revmap_entry** %8, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %139, i64 %140
  %142 = call i32 @note_hpte_modification(%struct.kvm* %138, %struct.revmap_entry* %141)
  br label %143

143:                                              ; preds = %130, %117
  store i32 1, i32* %13, align 4
  br label %144

144:                                              ; preds = %143, %109, %101
  %145 = load i32*, i32** %12, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @be64_to_cpu(i32 %148)
  %150 = call i32 @__unlock_hpte(i32* %145, i32 %149)
  br label %151

151:                                              ; preds = %144, %81
  %152 = load i64, i64* %11, align 8
  store i64 %152, i64* %10, align 8
  %153 = load i64, i64* %9, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %59, label %155

155:                                              ; preds = %151
  %156 = load i64*, i64** %14, align 8
  %157 = call i32 @unlock_rmap(i64* %156)
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %50
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @lock_rmap(i64*) #1

declare dso_local i32 @unlock_rmap(i64*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @try_lock_hpte(i32*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @kvmppc_clear_ref_hpte(%struct.kvm*, i32*, i64) #1

declare dso_local i32 @note_hpte_modification(%struct.kvm*, %struct.revmap_entry*) #1

declare dso_local i32 @__unlock_hpte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
