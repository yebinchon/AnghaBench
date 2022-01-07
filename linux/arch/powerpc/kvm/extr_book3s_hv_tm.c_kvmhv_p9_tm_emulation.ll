; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_tm.c_kvmhv_p9_tm_emulation.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_tm.c_kvmhv_p9_tm_emulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_8__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MSR_TM = common dso_local global i32 0, align 4
@RESUME_GUEST = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@PCR_ARCH_206 = common dso_local global i32 0, align 4
@SRR1_PROGILL = common dso_local global i32 0, align 4
@HFSCR_EBB = common dso_local global i32 0, align 4
@FSCR_EBB = common dso_local global i32 0, align 4
@FSCR_EBB_LG = common dso_local global i32 0, align 4
@BOOK3S_INTERRUPT_FAC_UNAVAIL = common dso_local global i32 0, align 4
@BESCR_GE = common dso_local global i32 0, align 4
@MSR_TS_MASK = common dso_local global i32 0, align 4
@MSR_TS_T = common dso_local global i32 0, align 4
@MSR_LE = common dso_local global i32 0, align 4
@HFSCR_TM = common dso_local global i32 0, align 4
@FSCR_TM_LG = common dso_local global i32 0, align 4
@MSR_TS_S_LG = common dso_local global i32 0, align 4
@MSR_TS_S = common dso_local global i32 0, align 4
@SRR1_PROGTM = common dso_local global i32 0, align 4
@TEXASR_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmhv_p9_tm_emulation(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, -67106817
  switch i32 %20, label %527 [
    i32 131, label %21
    i32 132, label %70
    i32 133, label %198
    i32 128, label %238
    i32 129, label %347
    i32 130, label %445
  ]

21:                                               ; preds = %1
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @MSR_TM_SUSPENDED(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @MSR_TM_TRANSACTIONAL(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MSR_TM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %30, %21
  %40 = phi i1 [ false, %30 ], [ false, %21 ], [ %38, %34 ]
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON_ONCE(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sanitize_msr(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 4
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 10
  store i32 %56, i32* %59, align 4
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %69, i32* %2, align 4
  br label %530

70:                                               ; preds = %1
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @MSR_PR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PCR_ARCH_206, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = load i32, i32* @SRR1_PROGILL, align 4
  %88 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %86, i32 %87)
  %89 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %89, i32* %2, align 4
  br label %530

90:                                               ; preds = %75, %70
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @HFSCR_EBB, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %90
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = load i32, i32* @SRR1_PROGILL, align 4
  %101 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %99, i32 %100)
  %102 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %102, i32* %2, align 4
  br label %530

103:                                              ; preds = %90
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @MSR_PR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %103
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @FSCR_EBB, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %108
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = and i64 %121, 72057594037927935
  %123 = load i32, i32* @FSCR_EBB_LG, align 4
  %124 = shl i32 %123, 56
  %125 = sext i32 %124 to i64
  %126 = or i64 %122, %125
  %127 = trunc i64 %126 to i32
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %132 = load i32, i32* @BOOK3S_INTERRUPT_FAC_UNAVAIL, align 4
  %133 = call i32 @kvmppc_book3s_queue_irqprio(%struct.kvm_vcpu* %131, i32 %132)
  %134 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %134, i32* %2, align 4
  br label %530

135:                                              ; preds = %108, %103
  %136 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %137 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @MSR_TM_SUSPENDED(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  %145 = ashr i32 %144, 30
  %146 = and i32 %145, 3
  %147 = icmp eq i32 %146, 2
  br label %148

148:                                              ; preds = %143, %135
  %149 = phi i1 [ false, %135 ], [ %147, %143 ]
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i32 @WARN_ON_ONCE(i32 %151)
  %153 = load i32, i32* @BESCR_GE, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %4, align 4
  %158 = and i32 %157, 2048
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %148
  %161 = load i32, i32* @BESCR_GE, align 4
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %160, %148
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %167 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @MSR_TS_MASK, align 4
  %171 = xor i32 %170, -1
  %172 = and i32 %169, %171
  %173 = load i32, i32* @MSR_TS_T, align 4
  %174 = or i32 %172, %173
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 4
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %187 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 10
  store i32 %185, i32* %188, align 4
  %189 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %190 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %194 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  store i32 %192, i32* %196, align 4
  %197 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %197, i32* %2, align 4
  br label %530

198:                                              ; preds = %1
  %199 = load i32, i32* %4, align 4
  %200 = ashr i32 %199, 21
  %201 = and i32 %200, 31
  store i32 %201, i32* %9, align 4
  %202 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %202, i32 %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @MSR_TM_SUSPENDED(i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %198
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @MSR_TM_TRANSACTIONAL(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @MSR_TM, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br label %217

217:                                              ; preds = %212, %208, %198
  %218 = phi i1 [ false, %208 ], [ false, %198 ], [ %216, %212 ]
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = call i32 @WARN_ON_ONCE(i32 %220)
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @MSR_LE, align 4
  %224 = xor i32 %223, -1
  %225 = and i32 %222, %224
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @MSR_LE, align 4
  %228 = and i32 %226, %227
  %229 = or i32 %225, %228
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @sanitize_msr(i32 %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %234 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  store i32 %232, i32* %236, align 8
  %237 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %237, i32* %2, align 4
  br label %530

238:                                              ; preds = %1
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @MSR_PR, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %258

243:                                              ; preds = %238
  %244 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %245 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @PCR_ARCH_206, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %243
  %254 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %255 = load i32, i32* @SRR1_PROGILL, align 4
  %256 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %254, i32 %255)
  %257 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %257, i32* %2, align 4
  br label %530

258:                                              ; preds = %243, %238
  %259 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %260 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @HFSCR_TM, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %258
  %267 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %268 = load i32, i32* @SRR1_PROGILL, align 4
  %269 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %267, i32 %268)
  %270 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %270, i32* %2, align 4
  br label %530

271:                                              ; preds = %258
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* @MSR_TM, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %295, label %276

276:                                              ; preds = %271
  %277 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %278 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = and i64 %281, 72057594037927935
  %283 = load i32, i32* @FSCR_TM_LG, align 4
  %284 = shl i32 %283, 56
  %285 = sext i32 %284 to i64
  %286 = or i64 %282, %285
  %287 = trunc i64 %286 to i32
  %288 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %289 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 2
  store i32 %287, i32* %290, align 8
  %291 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %292 = load i32, i32* @BOOK3S_INTERRUPT_FAC_UNAVAIL, align 4
  %293 = call i32 @kvmppc_book3s_queue_irqprio(%struct.kvm_vcpu* %291, i32 %292)
  %294 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %294, i32* %2, align 4
  br label %530

295:                                              ; preds = %271
  %296 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %297 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 7
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 268435455
  %302 = load i32, i32* %5, align 4
  %303 = load i32, i32* @MSR_TS_MASK, align 4
  %304 = and i32 %302, %303
  %305 = load i32, i32* @MSR_TS_S_LG, align 4
  %306 = ashr i32 %304, %305
  %307 = shl i32 %306, 29
  %308 = or i32 %301, %307
  %309 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %310 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 7
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  store i32 %308, i32* %312, align 4
  %313 = load i32, i32* %4, align 4
  %314 = and i32 %313, 2097152
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %328

316:                                              ; preds = %295
  %317 = load i32, i32* %5, align 4
  %318 = call i32 @MSR_TM_SUSPENDED(i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %316
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* @MSR_TS_MASK, align 4
  %323 = xor i32 %322, -1
  %324 = and i32 %321, %323
  %325 = load i32, i32* @MSR_TS_T, align 4
  %326 = or i32 %324, %325
  store i32 %326, i32* %5, align 4
  br label %327

327:                                              ; preds = %320, %316
  br label %340

328:                                              ; preds = %295
  %329 = load i32, i32* %5, align 4
  %330 = call i32 @MSR_TM_TRANSACTIONAL(i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %339

332:                                              ; preds = %328
  %333 = load i32, i32* %5, align 4
  %334 = load i32, i32* @MSR_TS_MASK, align 4
  %335 = xor i32 %334, -1
  %336 = and i32 %333, %335
  %337 = load i32, i32* @MSR_TS_S, align 4
  %338 = or i32 %336, %337
  store i32 %338, i32* %5, align 4
  br label %339

339:                                              ; preds = %332, %328
  br label %340

340:                                              ; preds = %339, %327
  %341 = load i32, i32* %5, align 4
  %342 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %343 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 6
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 0
  store i32 %341, i32* %345, align 8
  %346 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %346, i32* %2, align 4
  br label %530

347:                                              ; preds = %1
  %348 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %349 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @HFSCR_TM, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %347
  %356 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %357 = load i32, i32* @SRR1_PROGILL, align 4
  %358 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %356, i32 %357)
  %359 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %359, i32* %2, align 4
  br label %530

360:                                              ; preds = %347
  %361 = load i32, i32* %5, align 4
  %362 = load i32, i32* @MSR_TM, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %384, label %365

365:                                              ; preds = %360
  %366 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %367 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = sext i32 %369 to i64
  %371 = and i64 %370, 72057594037927935
  %372 = load i32, i32* @FSCR_TM_LG, align 4
  %373 = shl i32 %372, 56
  %374 = sext i32 %373 to i64
  %375 = or i64 %371, %374
  %376 = trunc i64 %375 to i32
  %377 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %378 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 2
  store i32 %376, i32* %379, align 8
  %380 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %381 = load i32, i32* @BOOK3S_INTERRUPT_FAC_UNAVAIL, align 4
  %382 = call i32 @kvmppc_book3s_queue_irqprio(%struct.kvm_vcpu* %380, i32 %381)
  %383 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %383, i32* %2, align 4
  br label %530

384:                                              ; preds = %360
  %385 = load i32, i32* %5, align 4
  %386 = call i32 @MSR_TM_ACTIVE(i32 %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %393, label %388

388:                                              ; preds = %384
  %389 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %390 = load i32, i32* @SRR1_PROGTM, align 4
  %391 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %389, i32 %390)
  %392 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %392, i32* %2, align 4
  br label %530

393:                                              ; preds = %384
  %394 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %395 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @TEXASR_FS, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %416, label %401

401:                                              ; preds = %393
  %402 = load i32, i32* %4, align 4
  %403 = ashr i32 %402, 16
  %404 = and i32 %403, 31
  store i32 %404, i32* %8, align 4
  %405 = load i32, i32* %8, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %401
  %408 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %409 = load i32, i32* %8, align 4
  %410 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %408, i32 %409)
  %411 = and i32 %410, 255
  store i32 %411, i32* %8, align 4
  br label %412

412:                                              ; preds = %407, %401
  %413 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %414 = load i32, i32* %8, align 4
  %415 = call i32 @emulate_tx_failure(%struct.kvm_vcpu* %413, i32 %414)
  br label %416

416:                                              ; preds = %412, %393
  %417 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %418 = call i32 @copy_from_checkpoint(%struct.kvm_vcpu* %417)
  %419 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %420 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 7
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = and i32 %423, 268435455
  %425 = load i32, i32* %5, align 4
  %426 = load i32, i32* @MSR_TS_MASK, align 4
  %427 = and i32 %425, %426
  %428 = load i32, i32* @MSR_TS_S_LG, align 4
  %429 = ashr i32 %427, %428
  %430 = shl i32 %429, 29
  %431 = or i32 %424, %430
  %432 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %433 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 7
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 0
  store i32 %431, i32* %435, align 4
  %436 = load i32, i32* @MSR_TS_MASK, align 4
  %437 = xor i32 %436, -1
  %438 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %439 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i32 0, i32 6
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = and i32 %442, %437
  store i32 %443, i32* %441, align 8
  %444 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %444, i32* %2, align 4
  br label %530

445:                                              ; preds = %1
  %446 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %447 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @HFSCR_TM, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %458, label %453

453:                                              ; preds = %445
  %454 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %455 = load i32, i32* @SRR1_PROGILL, align 4
  %456 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %454, i32 %455)
  %457 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %457, i32* %2, align 4
  br label %530

458:                                              ; preds = %445
  %459 = load i32, i32* %5, align 4
  %460 = load i32, i32* @MSR_TM, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %482, label %463

463:                                              ; preds = %458
  %464 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %465 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = sext i32 %467 to i64
  %469 = and i64 %468, 72057594037927935
  %470 = load i32, i32* @FSCR_TM_LG, align 4
  %471 = shl i32 %470, 56
  %472 = sext i32 %471 to i64
  %473 = or i64 %469, %472
  %474 = trunc i64 %473 to i32
  %475 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %476 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %476, i32 0, i32 2
  store i32 %474, i32* %477, align 8
  %478 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %479 = load i32, i32* @BOOK3S_INTERRUPT_FAC_UNAVAIL, align 4
  %480 = call i32 @kvmppc_book3s_queue_irqprio(%struct.kvm_vcpu* %478, i32 %479)
  %481 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %481, i32* %2, align 4
  br label %530

482:                                              ; preds = %458
  %483 = load i32, i32* %5, align 4
  %484 = call i32 @MSR_TM_ACTIVE(i32 %483)
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %494, label %486

486:                                              ; preds = %482
  %487 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %488 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %488, i32 0, i32 5
  %490 = load i32, i32* %489, align 4
  %491 = load i32, i32* @TEXASR_FS, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %486, %482
  %495 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %496 = load i32, i32* @SRR1_PROGTM, align 4
  %497 = call i32 @kvmppc_core_queue_program(%struct.kvm_vcpu* %495, i32 %496)
  %498 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %498, i32* %2, align 4
  br label %530

499:                                              ; preds = %486
  %500 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %501 = call i32 @copy_to_checkpoint(%struct.kvm_vcpu* %500)
  %502 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %503 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %503, i32 0, i32 7
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = and i32 %506, 268435455
  %508 = load i32, i32* %5, align 4
  %509 = load i32, i32* @MSR_TS_MASK, align 4
  %510 = and i32 %508, %509
  %511 = load i32, i32* @MSR_TS_S_LG, align 4
  %512 = ashr i32 %510, %511
  %513 = shl i32 %512, 29
  %514 = or i32 %507, %513
  %515 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %516 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %516, i32 0, i32 7
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %517, i32 0, i32 0
  store i32 %514, i32* %518, align 4
  %519 = load i32, i32* %5, align 4
  %520 = load i32, i32* @MSR_TS_S, align 4
  %521 = or i32 %519, %520
  %522 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %523 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %523, i32 0, i32 6
  %525 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %524, i32 0, i32 0
  store i32 %521, i32* %525, align 8
  %526 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %526, i32* %2, align 4
  br label %530

527:                                              ; preds = %1
  %528 = call i32 @WARN_ON_ONCE(i32 1)
  %529 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %529, i32* %2, align 4
  br label %530

530:                                              ; preds = %527, %499, %494, %463, %453, %416, %388, %365, %355, %340, %276, %266, %253, %217, %164, %116, %98, %85, %39
  %531 = load i32, i32* %2, align 4
  ret i32 %531
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @MSR_TM_SUSPENDED(i32) #1

declare dso_local i32 @MSR_TM_TRANSACTIONAL(i32) #1

declare dso_local i32 @sanitize_msr(i32) #1

declare dso_local i32 @kvmppc_core_queue_program(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_book3s_queue_irqprio(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @MSR_TM_ACTIVE(i32) #1

declare dso_local i32 @emulate_tx_failure(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @copy_from_checkpoint(%struct.kvm_vcpu*) #1

declare dso_local i32 @copy_to_checkpoint(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
