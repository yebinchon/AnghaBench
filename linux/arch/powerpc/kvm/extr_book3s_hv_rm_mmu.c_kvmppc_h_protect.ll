; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_h_protect.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_h_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.revmap_entry = type { i64 }

@H_FUNCTION = common dso_local global i64 0, align 8
@H_PARAMETER = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@HPTE_V_ABSENT = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@H_AVPN = common dso_local global i64 0, align 8
@H_NOT_FOUND = common dso_local global i64 0, align 8
@HPTE_R_PP0 = common dso_local global i64 0, align 8
@HPTE_R_KEY_HI = common dso_local global i64 0, align 8
@HPTE_R_PP = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@HPTE_R_KEY_LO = common dso_local global i64 0, align 8
@HPTE_R_R = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_h_protect(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.revmap_entry*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = load %struct.kvm*, %struct.kvm** %23, align 8
  store %struct.kvm* %24, %struct.kvm** %12, align 8
  %25 = load %struct.kvm*, %struct.kvm** %12, align 8
  %26 = call i64 @kvm_is_radix(%struct.kvm* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i64, i64* @H_FUNCTION, align 8
  store i64 %29, i64* %6, align 8
  br label %229

30:                                               ; preds = %5
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.kvm*, %struct.kvm** %12, align 8
  %33 = getelementptr inbounds %struct.kvm, %struct.kvm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = call i64 @kvmppc_hpt_npte(%struct.TYPE_4__* %34)
  %36 = icmp uge i64 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @H_PARAMETER, align 8
  store i64 %38, i64* %6, align 8
  br label %229

39:                                               ; preds = %30
  %40 = load %struct.kvm*, %struct.kvm** %12, align 8
  %41 = getelementptr inbounds %struct.kvm, %struct.kvm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = shl i64 %45, 4
  %47 = add i64 %44, %46
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %13, align 8
  br label %49

49:                                               ; preds = %55, %39
  %50 = load i32*, i32** %13, align 8
  %51 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %52 = call i32 @try_lock_hpte(i32* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (...) @cpu_relax()
  br label %49

57:                                               ; preds = %49
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @be64_to_cpu(i32 %60)
  store i64 %61, i64* %20, align 8
  store i64 %61, i64* %15, align 8
  %62 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %63 = call i64 @cpu_has_feature(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i64, i64* %15, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @be64_to_cpu(i32 %69)
  %71 = call i64 @hpte_new_to_old_v(i64 %66, i64 %70)
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %65, %57
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* @HPTE_V_ABSENT, align 8
  %75 = load i64, i64* @HPTE_V_VALID, align 8
  %76 = or i64 %74, %75
  %77 = and i64 %73, %76
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @H_AVPN, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load i64, i64* %15, align 8
  %86 = and i64 %85, -128
  %87 = load i64, i64* %10, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84, %72
  %90 = load i32*, i32** %13, align 8
  %91 = load i64, i64* %20, align 8
  %92 = call i32 @__unlock_hpte(i32* %90, i64 %91)
  %93 = load i64, i64* @H_NOT_FOUND, align 8
  store i64 %93, i64* %6, align 8
  br label %229

94:                                               ; preds = %84, %79
  %95 = load i32*, i32** %13, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @be64_to_cpu(i32 %97)
  store i64 %98, i64* %21, align 8
  %99 = load i64, i64* %8, align 8
  %100 = shl i64 %99, 55
  %101 = load i64, i64* @HPTE_R_PP0, align 8
  %102 = and i64 %100, %101
  store i64 %102, i64* %19, align 8
  %103 = load i64, i64* %8, align 8
  %104 = shl i64 %103, 48
  %105 = load i64, i64* @HPTE_R_KEY_HI, align 8
  %106 = and i64 %104, %105
  %107 = load i64, i64* %19, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %19, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @HPTE_R_PP, align 8
  %111 = load i64, i64* @HPTE_R_N, align 8
  %112 = or i64 %110, %111
  %113 = load i64, i64* @HPTE_R_KEY_LO, align 8
  %114 = or i64 %112, %113
  %115 = and i64 %109, %114
  %116 = load i64, i64* %19, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %19, align 8
  %118 = load i64, i64* @HPTE_R_PP0, align 8
  %119 = load i64, i64* @HPTE_R_PP, align 8
  %120 = or i64 %118, %119
  %121 = load i64, i64* @HPTE_R_N, align 8
  %122 = or i64 %120, %121
  %123 = load i64, i64* @HPTE_R_KEY_HI, align 8
  %124 = or i64 %122, %123
  %125 = load i64, i64* @HPTE_R_KEY_LO, align 8
  %126 = or i64 %124, %125
  store i64 %126, i64* %18, align 8
  %127 = load %struct.kvm*, %struct.kvm** %12, align 8
  %128 = getelementptr inbounds %struct.kvm, %struct.kvm* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = call %struct.revmap_entry* @real_vmalloc_addr(i32* %133)
  store %struct.revmap_entry* %134, %struct.revmap_entry** %14, align 8
  %135 = load %struct.revmap_entry*, %struct.revmap_entry** %14, align 8
  %136 = icmp ne %struct.revmap_entry* %135, null
  br i1 %136, label %137, label %152

137:                                              ; preds = %94
  %138 = load %struct.revmap_entry*, %struct.revmap_entry** %14, align 8
  %139 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %18, align 8
  %142 = xor i64 %141, -1
  %143 = and i64 %140, %142
  %144 = load i64, i64* %19, align 8
  %145 = or i64 %143, %144
  store i64 %145, i64* %16, align 8
  %146 = load i64, i64* %16, align 8
  %147 = load %struct.revmap_entry*, %struct.revmap_entry** %14, align 8
  %148 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.kvm*, %struct.kvm** %12, align 8
  %150 = load %struct.revmap_entry*, %struct.revmap_entry** %14, align 8
  %151 = call i32 @note_hpte_modification(%struct.kvm* %149, %struct.revmap_entry* %150)
  br label %152

152:                                              ; preds = %137, %94
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* @HPTE_V_VALID, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %211

157:                                              ; preds = %152
  %158 = load i64, i64* %21, align 8
  %159 = load i64, i64* %18, align 8
  %160 = xor i64 %159, -1
  %161 = and i64 %158, %160
  %162 = load i64, i64* %19, align 8
  %163 = or i64 %161, %162
  store i64 %163, i64* %16, align 8
  %164 = load i64, i64* %16, align 8
  %165 = call i64 @hpte_is_writable(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %157
  %168 = load i64, i64* %21, align 8
  %169 = call i64 @hpte_is_writable(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load i64, i64* %16, align 8
  %173 = call i64 @hpte_make_readonly(i64 %172)
  store i64 %173, i64* %16, align 8
  br label %174

174:                                              ; preds = %171, %167, %157
  %175 = load i64, i64* %16, align 8
  %176 = load i64, i64* %21, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %210

178:                                              ; preds = %174
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* %16, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call i64 @compute_tlbie_rb(i64 %179, i64 %180, i64 %181)
  store i64 %182, i64* %17, align 8
  %183 = load i64, i64* %20, align 8
  %184 = load i64, i64* @HPTE_V_VALID, align 8
  %185 = xor i64 %184, -1
  %186 = and i64 %183, %185
  %187 = load i64, i64* @HPTE_V_ABSENT, align 8
  %188 = or i64 %186, %187
  %189 = call i32 @cpu_to_be64(i64 %188)
  %190 = load i32*, i32** %13, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  store i32 %189, i32* %191, align 4
  %192 = load %struct.kvm*, %struct.kvm** %12, align 8
  %193 = load %struct.kvm*, %struct.kvm** %12, align 8
  %194 = call i32 @global_invalidates(%struct.kvm* %193)
  %195 = call i32 @do_tlbies(%struct.kvm* %192, i64* %17, i32 1, i32 %194, i32 1)
  %196 = load i32*, i32** %13, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @be64_to_cpu(i32 %198)
  %200 = load i64, i64* @HPTE_R_R, align 8
  %201 = load i64, i64* @HPTE_R_C, align 8
  %202 = or i64 %200, %201
  %203 = and i64 %199, %202
  %204 = load i64, i64* %16, align 8
  %205 = or i64 %204, %203
  store i64 %205, i64* %16, align 8
  %206 = load i64, i64* %16, align 8
  %207 = call i32 @cpu_to_be64(i64 %206)
  %208 = load i32*, i32** %13, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %178, %174
  br label %211

211:                                              ; preds = %210, %152
  %212 = load i32*, i32** %13, align 8
  %213 = load i64, i64* %20, align 8
  %214 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %215 = xor i64 %214, -1
  %216 = and i64 %213, %215
  %217 = call i32 @unlock_hpte(i32* %212, i64 %216)
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %218 = load i64, i64* %15, align 8
  %219 = load i64, i64* %21, align 8
  %220 = call i64 @is_mmio_hpte(i64 %218, i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %211
  %223 = load %struct.kvm*, %struct.kvm** %12, align 8
  %224 = getelementptr inbounds %struct.kvm, %struct.kvm* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = call i32 @atomic64_inc(i32* %225)
  br label %227

227:                                              ; preds = %222, %211
  %228 = load i64, i64* @H_SUCCESS, align 8
  store i64 %228, i64* %6, align 8
  br label %229

229:                                              ; preds = %227, %89, %37, %28
  %230 = load i64, i64* %6, align 8
  ret i64 %230
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i64 @kvmppc_hpt_npte(%struct.TYPE_4__*) #1

declare dso_local i32 @try_lock_hpte(i32*, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_new_to_old_v(i64, i64) #1

declare dso_local i32 @__unlock_hpte(i32*, i64) #1

declare dso_local %struct.revmap_entry* @real_vmalloc_addr(i32*) #1

declare dso_local i32 @note_hpte_modification(%struct.kvm*, %struct.revmap_entry*) #1

declare dso_local i64 @hpte_is_writable(i64) #1

declare dso_local i64 @hpte_make_readonly(i64) #1

declare dso_local i64 @compute_tlbie_rb(i64, i64, i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @do_tlbies(%struct.kvm*, i64*, i32, i32, i32) #1

declare dso_local i32 @global_invalidates(%struct.kvm*) #1

declare dso_local i32 @unlock_hpte(i32*, i64) #1

declare dso_local i64 @is_mmio_hpte(i64, i64) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 3480}
