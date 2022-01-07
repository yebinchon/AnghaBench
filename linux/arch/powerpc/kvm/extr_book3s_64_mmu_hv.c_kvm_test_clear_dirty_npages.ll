; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_test_clear_dirty_npages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_test_clear_dirty_npages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.revmap_entry* }
%struct.revmap_entry = type { i64, i64 }

@KVMPPC_RMAP_PRESENT = common dso_local global i64 0, align 8
@KVMPPC_RMAP_INDEX = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@HPTE_V_ABSENT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64*)* @kvm_test_clear_dirty_npages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_test_clear_dirty_npages(%struct.kvm* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.revmap_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64* %1, i64** %5, align 8
  %16 = load %struct.kvm*, %struct.kvm** %4, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.revmap_entry*, %struct.revmap_entry** %19, align 8
  store %struct.revmap_entry* %20, %struct.revmap_entry** %6, align 8
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %88, %2
  %22 = load i64*, i64** %5, align 8
  %23 = call i32 @lock_rmap(i64* %22)
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KVMPPC_RMAP_PRESENT, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load i64*, i64** %5, align 8
  %31 = call i32 @unlock_rmap(i64* %30)
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %3, align 4
  br label %194

33:                                               ; preds = %21
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @KVMPPC_RMAP_INDEX, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %7, align 8
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %186, %33
  %39 = load %struct.kvm*, %struct.kvm** %4, align 8
  %40 = getelementptr inbounds %struct.kvm, %struct.kvm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = shl i64 %44, 4
  %46 = add i64 %43, %45
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %13, align 8
  %48 = load %struct.revmap_entry*, %struct.revmap_entry** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %48, i64 %49
  %51 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @be64_to_cpu(i32 %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* @HPTE_R_C, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %38
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @hpte_is_writable(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.kvm*, %struct.kvm** %4, align 8
  %67 = call i64 @vcpus_running(%struct.kvm* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61
  br label %186

70:                                               ; preds = %65, %38
  %71 = load i32*, i32** %13, align 8
  %72 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %73 = call i32 @try_lock_hpte(i32* %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %70
  %76 = load i64*, i64** %5, align 8
  %77 = call i32 @unlock_rmap(i64* %76)
  br label %78

78:                                               ; preds = %86, %75
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %83 = call i32 @cpu_to_be64(i64 %82)
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = call i32 (...) @cpu_relax()
  br label %78

88:                                               ; preds = %78
  br label %21

89:                                               ; preds = %70
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @HPTE_V_VALID, align 8
  %94 = call i32 @cpu_to_be64(i64 %93)
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %89
  %98 = load i32*, i32** %13, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @be64_to_cpu(i32 %101)
  %103 = call i32 @__unlock_hpte(i32* %98, i64 %102)
  br label %186

104:                                              ; preds = %89
  %105 = load i64, i64* @HPTE_V_ABSENT, align 8
  %106 = call i32 @cpu_to_be64(i64 %105)
  %107 = load i32*, i32** %13, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.kvm*, %struct.kvm** %4, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @kvmppc_invalidate_hpte(%struct.kvm* %111, i32* %112, i64 %113)
  %115 = load i32*, i32** %13, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @be64_to_cpu(i32 %117)
  store i64 %118, i64* %11, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @be64_to_cpu(i32 %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @HPTE_R_C, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %175

127:                                              ; preds = %104
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* @HPTE_R_C, align 8
  %130 = xor i64 %129, -1
  %131 = and i64 %128, %130
  %132 = call i32 @cpu_to_be64(i64 %131)
  %133 = load i32*, i32** %13, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.revmap_entry*, %struct.revmap_entry** %6, align 8
  %136 = load i64, i64* %8, align 8
  %137 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %135, i64 %136
  %138 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @HPTE_R_C, align 8
  %141 = and i64 %139, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %127
  %144 = load i64, i64* @HPTE_R_C, align 8
  %145 = load %struct.revmap_entry*, %struct.revmap_entry** %6, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %145, i64 %146
  %148 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = or i64 %149, %144
  store i64 %150, i64* %148, align 8
  %151 = load %struct.kvm*, %struct.kvm** %4, align 8
  %152 = load %struct.revmap_entry*, %struct.revmap_entry** %6, align 8
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %152, i64 %153
  %155 = call i32 @note_hpte_modification(%struct.kvm* %151, %struct.revmap_entry* %154)
  br label %156

156:                                              ; preds = %143, %127
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* %12, align 8
  %159 = call i64 @kvmppc_actual_pgsz(i64 %157, i64 %158)
  store i64 %159, i64* %10, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* @PAGE_SIZE, align 8
  %162 = add i64 %160, %161
  %163 = sub i64 %162, 1
  %164 = load i64, i64* @PAGE_SHIFT, align 8
  %165 = lshr i64 %163, %164
  store i64 %165, i64* %10, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp ugt i64 %166, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = load i64, i64* %10, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %14, align 4
  br label %173

173:                                              ; preds = %170, %156
  %174 = call i32 (...) @eieio()
  br label %175

175:                                              ; preds = %173, %104
  %176 = load i64, i64* @HPTE_V_ABSENT, align 8
  %177 = xor i64 %176, -1
  %178 = load i64, i64* %11, align 8
  %179 = and i64 %178, %177
  store i64 %179, i64* %11, align 8
  %180 = load i64, i64* @HPTE_V_VALID, align 8
  %181 = load i64, i64* %11, align 8
  %182 = or i64 %181, %180
  store i64 %182, i64* %11, align 8
  %183 = load i32*, i32** %13, align 8
  %184 = load i64, i64* %11, align 8
  %185 = call i32 @__unlock_hpte(i32* %183, i64 %184)
  br label %186

186:                                              ; preds = %175, %97, %69
  %187 = load i64, i64* %9, align 8
  store i64 %187, i64* %8, align 8
  %188 = load i64, i64* %7, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %38, label %190

190:                                              ; preds = %186
  %191 = load i64*, i64** %5, align 8
  %192 = call i32 @unlock_rmap(i64* %191)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %29
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @lock_rmap(i64*) #1

declare dso_local i32 @unlock_rmap(i64*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @hpte_is_writable(i64) #1

declare dso_local i64 @vcpus_running(%struct.kvm*) #1

declare dso_local i32 @try_lock_hpte(i32*, i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @__unlock_hpte(i32*, i64) #1

declare dso_local i32 @kvmppc_invalidate_hpte(%struct.kvm*, i32*, i64) #1

declare dso_local i32 @note_hpte_modification(%struct.kvm*, %struct.revmap_entry*) #1

declare dso_local i64 @kvmppc_actual_pgsz(i64, i64) #1

declare dso_local i32 @eieio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
