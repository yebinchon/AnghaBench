; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_mmu_book3s_64_hv_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_mmu_book3s_64_hv_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__, %struct.kvm* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.kvm = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.kvmppc_pte = type { i32, i64, i32, i32, i32, i32 }
%struct.kvmppc_slb = type { i64 }

@MSR_DR = common dso_local global i32 0, align 4
@MSR_IR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HPTE_V_VALID = common dso_local global i32 0, align 4
@HPTE_V_ABSENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@HPTE_V_HVLOCK = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@HPTE_V_AVPN = common dso_local global i64 0, align 8
@HPTE_R_PP0 = common dso_local global i64 0, align 8
@HPTE_R_PP = common dso_local global i64 0, align 8
@MSR_PR = common dso_local global i32 0, align 4
@SLB_VSID_KP = common dso_local global i64 0, align 8
@SLB_VSID_KS = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@HPTE_R_G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, %struct.kvmppc_pte*, i32, i32)* @kvmppc_mmu_book3s_64_hv_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_mmu_book3s_64_hv_xlate(%struct.kvm_vcpu* %0, i32 %1, %struct.kvmppc_pte* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvmppc_pte*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca %struct.kvmppc_slb*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.kvmppc_pte* %2, %struct.kvmppc_pte** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = load %struct.kvm*, %struct.kvm** %25, align 8
  store %struct.kvm* %26, %struct.kvm** %12, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @MSR_DR, align 4
  br label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @MSR_IR, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = and i32 %31, %39
  store i32 %40, i32* %22, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 1
  %43 = load %struct.kvm*, %struct.kvm** %42, align 8
  %44 = call i64 @kvm_is_radix(%struct.kvm* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @kvmppc_mmu_radix_xlate(%struct.kvm_vcpu* %47, i32 %48, %struct.kvmppc_pte* %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %228

53:                                               ; preds = %38
  %54 = load i32, i32* %22, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call %struct.kvmppc_slb* @kvmppc_mmu_book3s_hv_find_slbe(%struct.kvm_vcpu* %57, i32 %58)
  store %struct.kvmppc_slb* %59, %struct.kvmppc_slb** %13, align 8
  %60 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %13, align 8
  %61 = icmp ne %struct.kvmppc_slb* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %228

65:                                               ; preds = %56
  %66 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %13, align 8
  %67 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %14, align 8
  br label %76

69:                                               ; preds = %53
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 1
  %72 = load %struct.kvm*, %struct.kvm** %71, align 8
  %73 = getelementptr inbounds %struct.kvm, %struct.kvm* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %14, align 8
  br label %76

76:                                               ; preds = %69, %65
  %77 = call i32 (...) @preempt_disable()
  %78 = load %struct.kvm*, %struct.kvm** %12, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i64, i64* %14, align 8
  %81 = load i32, i32* @HPTE_V_VALID, align 4
  %82 = load i32, i32* @HPTE_V_ABSENT, align 4
  %83 = or i32 %81, %82
  %84 = call i64 @kvmppc_hv_find_lock_hpte(%struct.kvm* %78, i32 %79, i64 %80, i32 %83)
  store i64 %84, i64* %21, align 8
  %85 = load i64, i64* %21, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = call i32 (...) @preempt_enable()
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %228

91:                                               ; preds = %76
  %92 = load %struct.kvm*, %struct.kvm** %12, align 8
  %93 = getelementptr inbounds %struct.kvm, %struct.kvm* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %21, align 8
  %98 = shl i64 %97, 4
  %99 = add nsw i64 %96, %98
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %20, align 8
  %101 = load i32*, i32** %20, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @be64_to_cpu(i32 %103)
  %105 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %106 = xor i64 %105, -1
  %107 = and i64 %104, %106
  store i64 %107, i64* %18, align 8
  store i64 %107, i64* %17, align 8
  %108 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %109 = call i64 @cpu_has_feature(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %91
  %112 = load i64, i64* %17, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @be64_to_cpu(i32 %115)
  %117 = call i64 @hpte_new_to_old_v(i64 %112, i64 %116)
  store i64 %117, i64* %17, align 8
  br label %118

118:                                              ; preds = %111, %91
  %119 = load %struct.kvm*, %struct.kvm** %12, align 8
  %120 = getelementptr inbounds %struct.kvm, %struct.kvm* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i64, i64* %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %19, align 8
  %128 = load i32*, i32** %20, align 8
  %129 = load i64, i64* %18, align 8
  %130 = call i32 @unlock_hpte(i32* %128, i64 %129)
  %131 = call i32 (...) @preempt_enable()
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %134 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* @HPTE_V_AVPN, align 8
  %137 = and i64 %135, %136
  %138 = shl i64 %137, 4
  %139 = load i32, i32* %8, align 4
  %140 = ashr i32 %139, 12
  %141 = and i32 %140, 4095
  %142 = sext i32 %141 to i64
  %143 = or i64 %138, %142
  %144 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %145 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %19, align 8
  %147 = load i64, i64* @HPTE_R_PP0, align 8
  %148 = load i64, i64* @HPTE_R_PP, align 8
  %149 = or i64 %147, %148
  %150 = and i64 %146, %149
  store i64 %150, i64* %15, align 8
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %152 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MSR_PR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %118
  %160 = load i64, i64* @SLB_VSID_KP, align 8
  br label %163

161:                                              ; preds = %118
  %162 = load i64, i64* @SLB_VSID_KS, align 8
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i64 [ %160, %159 ], [ %162, %161 ]
  store i64 %164, i64* %16, align 8
  %165 = load i64, i64* %14, align 8
  %166 = load i64, i64* %16, align 8
  %167 = and i64 %166, %165
  store i64 %167, i64* %16, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* %16, align 8
  %170 = call i32 @hpte_read_permission(i64 %168, i64 %169)
  %171 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %172 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = load i64, i64* %15, align 8
  %174 = load i64, i64* %16, align 8
  %175 = call i32 @hpte_write_permission(i64 %173, i64 %174)
  %176 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %177 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %179 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %163
  %183 = load i64, i64* %19, align 8
  %184 = load i64, i64* @HPTE_R_N, align 8
  %185 = load i64, i64* @HPTE_R_G, align 8
  %186 = or i64 %184, %185
  %187 = and i64 %183, %186
  %188 = icmp ne i64 %187, 0
  %189 = xor i1 %188, true
  br label %190

190:                                              ; preds = %182, %163
  %191 = phi i1 [ false, %163 ], [ %189, %182 ]
  %192 = zext i1 %191 to i32
  %193 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %194 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %221

197:                                              ; preds = %190
  %198 = load i32, i32* %22, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %221

200:                                              ; preds = %197
  %201 = load i64, i64* %19, align 8
  %202 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %203 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @hpte_get_skey_perm(i64 %201, i32 %205)
  store i32 %206, i32* %23, align 4
  %207 = load i32, i32* %23, align 4
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %200
  %211 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %212 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %211, i32 0, i32 5
  store i32 0, i32* %212, align 4
  br label %213

213:                                              ; preds = %210, %200
  %214 = load i32, i32* %23, align 4
  %215 = and i32 %214, 2
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %219 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %218, i32 0, i32 4
  store i32 0, i32* %219, align 8
  br label %220

220:                                              ; preds = %217, %213
  br label %221

221:                                              ; preds = %220, %197, %190
  %222 = load i64, i64* %17, align 8
  %223 = load i64, i64* %19, align 8
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @kvmppc_mmu_get_real_addr(i64 %222, i64 %223, i32 %224)
  %226 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %9, align 8
  %227 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %221, %87, %62, %46
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_mmu_radix_xlate(%struct.kvm_vcpu*, i32, %struct.kvmppc_pte*, i32, i32) #1

declare dso_local %struct.kvmppc_slb* @kvmppc_mmu_book3s_hv_find_slbe(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @kvmppc_hv_find_lock_hpte(%struct.kvm*, i32, i64, i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_new_to_old_v(i64, i64) #1

declare dso_local i32 @unlock_hpte(i32*, i64) #1

declare dso_local i32 @hpte_read_permission(i64, i64) #1

declare dso_local i32 @hpte_write_permission(i64, i64) #1

declare dso_local i32 @hpte_get_skey_perm(i64, i32) #1

declare dso_local i32 @kvmppc_mmu_get_real_addr(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
