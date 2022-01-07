; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_vcpu_create_hv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_vcpu_create_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.kvmppc_vcore*, i32, i32, i32, i32, i32, i32, i32*, i32, i32* }
%struct.kvmppc_vcore = type { i64, i32, i32 }
%struct.kvm = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.kvmppc_vcore** }

@ENOMEM = common dso_local global i32 0, align 4
@kvm_vcpu_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i32 0, align 4
@CTRL_RUNLATCH = common dso_local global i32 0, align 4
@SPRN_PVR = common dso_local global i32 0, align 4
@TB_NIL = common dso_local global i32 0, align 4
@MSR_SF = common dso_local global i32 0, align 4
@MSR_ME = common dso_local global i32 0, align 4
@HFSCR_TAR = common dso_local global i32 0, align 4
@HFSCR_EBB = common dso_local global i32 0, align 4
@HFSCR_PM = common dso_local global i32 0, align 4
@HFSCR_BHRB = common dso_local global i32 0, align 4
@HFSCR_DSCR = common dso_local global i32 0, align 4
@HFSCR_VECVSX = common dso_local global i32 0, align 4
@HFSCR_FP = common dso_local global i32 0, align 4
@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@SPRN_HFSCR = common dso_local global i32 0, align 4
@CPU_FTR_P9_TM_HV_ASSIST = common dso_local global i32 0, align 4
@HFSCR_TM = common dso_local global i32 0, align 4
@CPU_FTR_TM_COMP = common dso_local global i32 0, align 4
@KVMPPC_VCPU_NOTREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"KVM: VCPU ID too high\0A\00", align 1
@KVM_MAX_VCORES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"KVM: collision on id %u\00", align 1
@KVM_CPU_3S_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_vcpu* (%struct.kvm*, i32)* @kvmppc_core_vcpu_create_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_vcpu* @kvmppc_core_vcpu_create_hv(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @kvm_vcpu_cache, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.kvm_vcpu* @kmem_cache_zalloc(i32 %12, i32 %13)
  store %struct.kvm_vcpu* %14, %struct.kvm_vcpu** %6, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %16 = icmp ne %struct.kvm_vcpu* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %277

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %20 = load %struct.kvm*, %struct.kvm** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @kvm_vcpu_init(%struct.kvm_vcpu* %19, %struct.kvm* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %273

26:                                               ; preds = %18
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 15
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 16
  store i32* %29, i32** %32, align 8
  %33 = load i32, i32* @MMCR0_FC, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 14
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* @CTRL_RUNLATCH, align 4
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 13
  store i32 %39, i32* %42, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %44 = load i32, i32* @SPRN_PVR, align 4
  %45 = call i32 @mfspr(i32 %44)
  %46 = call i32 @kvmppc_set_pvr_hv(%struct.kvm_vcpu* %43, i32 %45)
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 12
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 11
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load i32, i32* @TB_NIL, align 4
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 10
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @MSR_SF, align 4
  %60 = load i32, i32* @MSR_ME, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @HFSCR_TAR, align 4
  %66 = load i32, i32* @HFSCR_EBB, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @HFSCR_PM, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @HFSCR_BHRB, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @HFSCR_DSCR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @HFSCR_VECVSX, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @HFSCR_FP, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %82 = call i64 @cpu_has_feature(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %26
  %85 = load i32, i32* @SPRN_HFSCR, align 4
  %86 = call i32 @mfspr(i32 %85)
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %86
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* @CPU_FTR_P9_TM_HV_ASSIST, align 4
  %93 = call i64 @cpu_has_feature(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load i32, i32* @HFSCR_TM, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %95, %84
  br label %103

103:                                              ; preds = %102, %26
  %104 = load i32, i32* @CPU_FTR_TM_COMP, align 4
  %105 = call i64 @cpu_has_feature(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32, i32* @HFSCR_TM, align 4
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %107, %103
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %116 = call i32 @kvmppc_mmu_book3s_hv_init(%struct.kvm_vcpu* %115)
  %117 = load i32, i32* @KVMPPC_VCPU_NOTREADY, align 4
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %119 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 9
  store i32 %117, i32* %120, align 4
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 8
  %124 = call i32 @init_waitqueue_head(i32* %123)
  %125 = load %struct.kvm*, %struct.kvm** %4, align 8
  %126 = getelementptr inbounds %struct.kvm, %struct.kvm* %125, i32 0, i32 0
  %127 = call i32 @mutex_lock(i32* %126)
  store %struct.kvmppc_vcore* null, %struct.kvmppc_vcore** %9, align 8
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %131 = call i64 @cpu_has_feature(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %114
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @KVM_MAX_VCPUS, align 4
  %136 = load %struct.kvm*, %struct.kvm** %4, align 8
  %137 = getelementptr inbounds %struct.kvm, %struct.kvm* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = mul i32 %135, %139
  %141 = icmp uge i32 %134, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %144 = load i32, i32* @KVM_MAX_VCORES, align 4
  store i32 %144, i32* %8, align 4
  br label %156

145:                                              ; preds = %133
  %146 = load %struct.kvm*, %struct.kvm** %4, align 8
  %147 = getelementptr inbounds %struct.kvm, %struct.kvm* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 1
  %151 = zext i1 %150 to i32
  %152 = call i32 @BUG_ON(i32 %151)
  %153 = load %struct.kvm*, %struct.kvm** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @kvmppc_pack_vcpu_id(%struct.kvm* %153, i32 %154)
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %145, %142
  br label %164

157:                                              ; preds = %114
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.kvm*, %struct.kvm** %4, align 8
  %160 = getelementptr inbounds %struct.kvm, %struct.kvm* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = udiv i32 %158, %162
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %157, %156
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @KVM_MAX_VCORES, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %225

168:                                              ; preds = %164
  %169 = load %struct.kvm*, %struct.kvm** %4, align 8
  %170 = getelementptr inbounds %struct.kvm, %struct.kvm* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 4
  %172 = load %struct.kvmppc_vcore**, %struct.kvmppc_vcore*** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %172, i64 %174
  %176 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %175, align 8
  store %struct.kvmppc_vcore* %176, %struct.kvmppc_vcore** %9, align 8
  %177 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %178 = icmp ne %struct.kvmppc_vcore* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %168
  %180 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %181 = call i64 @cpu_has_feature(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* %5, align 4
  %185 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  store %struct.kvmppc_vcore* null, %struct.kvmppc_vcore** %9, align 8
  br label %224

186:                                              ; preds = %179, %168
  %187 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %188 = icmp ne %struct.kvmppc_vcore* %187, null
  br i1 %188, label %223, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %7, align 4
  %192 = load %struct.kvm*, %struct.kvm** %4, align 8
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.kvm*, %struct.kvm** %4, align 8
  %195 = getelementptr inbounds %struct.kvm, %struct.kvm* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %197, 1
  %199 = xor i32 %198, -1
  %200 = and i32 %193, %199
  %201 = call %struct.kvmppc_vcore* @kvmppc_vcore_create(%struct.kvm* %192, i32 %200)
  store %struct.kvmppc_vcore* %201, %struct.kvmppc_vcore** %9, align 8
  %202 = load %struct.kvm*, %struct.kvm** %4, align 8
  %203 = getelementptr inbounds %struct.kvm, %struct.kvm* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 2
  %205 = call i32 @mutex_lock(i32* %204)
  %206 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %207 = load %struct.kvm*, %struct.kvm** %4, align 8
  %208 = getelementptr inbounds %struct.kvm, %struct.kvm* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 4
  %210 = load %struct.kvmppc_vcore**, %struct.kvmppc_vcore*** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %210, i64 %212
  store %struct.kvmppc_vcore* %206, %struct.kvmppc_vcore** %213, align 8
  %214 = load %struct.kvm*, %struct.kvm** %4, align 8
  %215 = getelementptr inbounds %struct.kvm, %struct.kvm* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load %struct.kvm*, %struct.kvm** %4, align 8
  %220 = getelementptr inbounds %struct.kvm, %struct.kvm* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 2
  %222 = call i32 @mutex_unlock(i32* %221)
  br label %223

223:                                              ; preds = %189, %186
  br label %224

224:                                              ; preds = %223, %183
  br label %225

225:                                              ; preds = %224, %164
  %226 = load %struct.kvm*, %struct.kvm** %4, align 8
  %227 = getelementptr inbounds %struct.kvm, %struct.kvm* %226, i32 0, i32 0
  %228 = call i32 @mutex_unlock(i32* %227)
  %229 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %230 = icmp ne %struct.kvmppc_vcore* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %225
  br label %273

232:                                              ; preds = %225
  %233 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %234 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %233, i32 0, i32 1
  %235 = call i32 @spin_lock(i32* %234)
  %236 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %237 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  %240 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %241 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %240, i32 0, i32 1
  %242 = call i32 @spin_unlock(i32* %241)
  %243 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %244 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %245 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 7
  store %struct.kvmppc_vcore* %243, %struct.kvmppc_vcore** %246, align 8
  %247 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %248 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %9, align 8
  %251 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = sub nsw i64 %249, %252
  %254 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %255 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 6
  store i64 %253, i64* %256, align 8
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %258 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 3
  store i32 -1, i32* %259, align 4
  %260 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %261 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 4
  store i32 -1, i32* %262, align 8
  %263 = load i32, i32* @KVM_CPU_3S_64, align 4
  %264 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %265 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 5
  store i32 %263, i32* %266, align 4
  %267 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %268 = call i32 @kvmppc_sanity_check(%struct.kvm_vcpu* %267)
  %269 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @debugfs_vcpu_init(%struct.kvm_vcpu* %269, i32 %270)
  %272 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_vcpu* %272, %struct.kvm_vcpu** %3, align 8
  br label %280

273:                                              ; preds = %231, %25
  %274 = load i32, i32* @kvm_vcpu_cache, align 4
  %275 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %276 = call i32 @kmem_cache_free(i32 %274, %struct.kvm_vcpu* %275)
  br label %277

277:                                              ; preds = %273, %17
  %278 = load i32, i32* %7, align 4
  %279 = call %struct.kvm_vcpu* @ERR_PTR(i32 %278)
  store %struct.kvm_vcpu* %279, %struct.kvm_vcpu** %3, align 8
  br label %280

280:                                              ; preds = %277, %232
  %281 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  ret %struct.kvm_vcpu* %281
}

declare dso_local %struct.kvm_vcpu* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kvm_vcpu_init(%struct.kvm_vcpu*, %struct.kvm*, i32) #1

declare dso_local i32 @kvmppc_set_pvr_hv(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @kvmppc_mmu_book3s_hv_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvmppc_pack_vcpu_id(%struct.kvm*, i32) #1

declare dso_local %struct.kvmppc_vcore* @kvmppc_vcore_create(%struct.kvm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvmppc_sanity_check(%struct.kvm_vcpu*) #1

declare dso_local i32 @debugfs_vcpu_init(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_vcpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
